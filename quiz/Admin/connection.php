<?php
$dbHost= "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName     = "aroma_db";



$conn=mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName); 

if(!$conn)
{
	
	die ("could not connect");
	
}
else
{
	//echo("conenct");
}
?>