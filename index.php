<?php 
	include 'config.php';
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Comment System</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="wrapper clear">
		<header class="headeropt">
			<h2>Comment System</h2>
		</header>
		<section class="content clear">
			<div class="box">
				<ul>
					<?php
						function formatDate($date){
							return date("M j, g:i a", strtotime($date));
						}
						
						$record = mysql_query("SELECT * FROM tbl_comments ORDER BY id DESC ");
						while($rows = mysql_fetch_array($record)){
							$name   = $rows['name'];
							$body   = $rows['body'];
							$comment_time = formatDate($rows['comment_time']);
							?>
							<li><span><?php echo $comment_time; ?></span> - <b><?php echo $name; ?> : </b> <?php echo $body; ?></li>
							<?php	
						}
					?>
				</ul>
			</div>
			<div class="shoutform clear">
				<form action="post_comment.php" method="post">
					<table>
						<tr>
							<td>Name</td>
							<td>:</td>
							<td><input type="text" name="name" placeholder="Please enter your name"  required="1"></td>
						</tr>
						<tr>
							<td>Body</td>
							<td>:</td>
							<td><input type="text" name="body" placeholder="Please enter your text" required="1"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td><input type="submit" name="submit" value="Comment"></td>
						</tr>
					
					</table>
				</form>
			</div>
		</section>
		<footer class="footeropt clear">
			<p>Copyright &copy; Comment System | Developed By <a href="www.facebook.com/smrasel53" target="_blank">SM Rasel</a></p>
		</footer>
	</div>
</body>
</html>




