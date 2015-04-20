<?php 
//include("conn.php"); 
include("test.php"); 
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>选择下拉菜单</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META NAME="Description" CONTENT="Power by 51windows.Net">
</HEAD>
<BODY>
<form id="order" method="post" action="order.php">
	付款人：<select name="payer">
				<option>rui.gao</option>
				<option>tao.zhou</option>
				<option>luli.dai</option>
				<option>neil.mao</option>
				<option>weiming.mao</option>
				<option>jing.ban</option>
				<option>liangliang.hu</option>
				<option>qi.lu</option>
				<option>erin.xu</option>
				<option>guoen.yong</option>
			</select><br/>
	金额：<input name="total" type="text"><br/>
	饭馆名称：<input name="address" type="text"><br/><br/>
	参与者：<select name="relater[]" multiple="multiple" style="height: 175px">
				<option>rui.gao</option>
				<option>tao.zhou</option>
				<option>luli.dai</option>
				<option>neil.mao</option>
				<option>weiming.mao</option>
				<option>jing.ban</option>
				<option>liangliang.hu</option>
				<option>qi.lu</option>
				<option>erin.xu</option>
				<option>guoen.yong</option>
			</select><br/>
	
	<input name="submit" type="submit" value="Submit">
</form>
<?php
if($_POST["submit"] == '')
exit;
print_r($_POST);
$order_user = $_POST["payer"];
$order_total = $_POST["total"];
$order_address = $_POST["address"];
if(date_default_timezone_get() != "1Asia/Shanghai") 
	date_default_timezone_set("Asia/Shanghai");
$order_time = date('Y-m-d H:i:s');
if($_POST["relater"] == null){
	$order_related_users = $order_user;
	$order_aver = 0;
	$incomeFlag = true;
	//echo 1111111111111;
}else{
	$order_related_users = arrayToString($_POST["relater"]);
	$order_aver = round($_POST["total"]/count($_POST["relater"]), 2);
}

$order_dec = $order_time.','.$order_user.','.$order_total.','.$order_address.','.$order_related_users;
$sql = "INSERT INTO `lunch`.`order` (
`order_id` ,
`order_user` ,
`order_total` ,
`order_address` ,
`order_time` ,
`order_related_users` ,
`order_aver` ,
`order_dec`
)
VALUES (
null, '$order_user', '$order_total', '$order_address', '$order_time', '$order_related_users', '$order_aver', '$order_dec'
);";
//echo $sql;
mysql_query($sql, $con);
//print_r($_POST["relater"].'<br/>');
//exit;
if(mysql_insert_id()){
	$order_id = mysql_insert_id();
	//require("accountList.php");
	if(count($_POST["relater"]) >= 1){
		/*
		if(postmail_jiucool_com($_POST["relater"],$subject,$message)){
			if($message != 'error'){
				updateAccount($_POST["relater"], $order_aver);
				AddAccount($order_user, $order_total);
			}else{
				echo "数据库问题，请重新操作！";
			}
		}else{
			echo "邮件服务器连接不上，请重新操作！";
		}*/	
		updateAccount($_POST["relater"], $order_aver);
		AddAccount($order_user, $order_total);
		require("accountList.php");
		postmail_jiucool_com($_POST["relater"],$subject,$message);	
		
	}elseif($incomeFlag == true){
		$mailUser[] = $order_user;
		/*
		if(postmail_jiucool_com($mailUser,$subject,$message)){
			if($message != 'error'){
				AddAccount($order_user, $order_total);
			}else{
				echo "数据库问题，请重新操作！";
			}
		}else{
			echo "邮件服务器连接不上，请重新操作！";
		}*/
		AddAccount($order_user, $order_total);
		require("accountList.php");
		postmail_jiucool_com($mailUser,$subject,$message);
		
	}
}else{
	echo '账单没有生成！';
}

?>
</body>
</html>