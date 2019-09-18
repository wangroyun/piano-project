<?php 

$host="locate";
$user="root";
$passwd="";
$dbName="piano_music";
$db=mysql_connect($host,$user,$passwd,$dbName)or die("error with Mysql connect");
mysql_query($db,"SET NAMES utf8");
?>