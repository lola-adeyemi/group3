<?php
require_once("dbconfig.php");
$conn = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
$pdo_statement=$conn->prepare("delete from BlogPosts where PostID=" . $_GET['PostID']);
$pdo_statement->execute();
header('location:blogposts.php');
?>