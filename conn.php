<?php
$con = mysql_connect("localhost","root","123456");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("lunch", $con);
mysql_query("set names 'utf8'");
?>