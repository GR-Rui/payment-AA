<?php 
//include("conn.php"); 
include("test.php"); 
$name = $_REQUEST["name"];
$month = $_REQUEST["month"];
if($name != null && $month != null){
	$sql = "SELECT * FROM `order` WHERE `order_related_users` like '%".$name."%' and `order_aver` !=0 and order_time like '".$month."%'";
	$query = mysql_query($sql);
	while($r = mysql_fetch_array($query)){
		$personalExpense[] = $r;
	}
	//print_r($personalExpense);
	//income
	$sql1 = "SELECT * FROM `order` WHERE `order_user` = '".$name."' and `order_time` like '".$month."%'";
	$query1 = mysql_query($sql1) or die("wrong");
	while($r1 = mysql_fetch_array($query1)){
		$income[] = $r1;
	}
	//print_r($income);
	//account
	$sql2 = "SELECT * FROM `user_info` WHERE `user_name` = '".$name."'";
	$query1 = mysql_query($sql2) or die("wrong");
	while($r2 = mysql_fetch_array($query1)){
		$remain = $r2;
	}
	//print_r($remain);
	
	//update email template
	require_once("personalAccount.php");
	//sent email
	if($name != ''){
		$sendTo[] = $name;
		if(postmail_jiucool_com($sendTo,$subject,$message)){
			echo 'OK';
		}else{
			echo 'try again';
		}
	}else{
		echo '收件人为空';
	}
	
}else{
	echo '用户名或月份为空';
}
?>