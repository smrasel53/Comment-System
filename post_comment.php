<?php
	include 'config.php';
	if(isset($_POST['submit'])){
		$name    = $_POST['name'];
		$body = $_POST['body'];
			mysql_query("INSERT INTO tbl_comments VALUES('', '".$name."', '".$body."',now())");
			header('location: index.php');
	}
?>