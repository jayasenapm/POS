<?php
include('connect.php');
$book=$_GET['book'];

$sql="INSERT INTO book(book_name) VALUES(:a)";
$d=$db->prepare($sql);
$d->execute(array(':a'=>$book));
echo'<script>window.location="welcome.php";</script>';


?>