<?php
/*
resend mail:5 6 79 80 line; add user_name for array
*/
include("test.php");
$order_id=288;
if($order_id !='') {
$sql = "SELECT * FROM `order` where `order_id` = $order_id";
//echo $sql;
$rs = mysql_fetch_array(mysql_query($sql,$con));
//print_r($rs);

//remain money list
$sql1 = "SELECT * FROM `user_info`";
$kk = mysql_query($sql1,$con);
while($rsk = mysql_fetch_array($kk)){
$rs1[] = $rsk;
}
if($rs != null){
$subject = 'Expense Account';
$moneyListName = "<tr>";
foreach($rs1 as $ak){
	$moneyListName .= "<td>".$ak["user_name"]."</td>";
}
$moneyListName .= "</tr><tr>";
foreach($rs1 as $an){
	$moneyListName .= "<td>".$an["user_money"]."</td>";
}
$moneyListName .= "</tr>";
//echo $moneyListName;
$message = '
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Expense Account</title>
</head>
<body>
<h2>Expense Account</h2>
<table border="1" cellspacing="1px">'.$moneyListName.'</table>
<br/>
<table width="700px" height="341" border="0" cellspacing="0">
<tr>
<td height="35" align="right">Credit User:</td>
<td style="padding-left:30px">'.$rs["order_user"].'</td>
</tr>
<tr>
<td height="35" align="right">Amount:</td>
<td style="padding-left:30px">RMB '.$rs["order_total"].'</td>
</tr>
<tr>
<td height="35" align="right">Date:</td>
<td style="padding-left:30px">'.$rs["order_time"].'</td>
</tr>
<tr>
<td height="35" align="right">Address:</td>
<td style="padding-left:30px">'.$rs["order_address"].'</td>
</tr>
<tr>
<td align="right">Customers:</td><td style="padding-left:30px">'.$rs["order_related_users"].'</td>
</tr>
<tr>
<td height="35" align="right">Average:</td>
<td style="padding-left:30px">RMB '.$rs["order_aver"].'</td>
</tr>
<tr>
<td align="right">Description:</td><td style="padding-left:30px">'.$rs["order_dec"].'</td>
</tr>
</table>
</body>
</html>
';
}else{
$subject = "Error Message";
$message = "error";
}
}else{
echo 'echo cecho';
}
//$user = array('weiming.mao','rui.gao','yongbiao.chen','luli.dai','tao.zhou');
//$user = array('rui.gao','neil.mao','yongbiao.chen','luli.dai','tao.zhou','maya','erin.xu');
//$user = array('rui.gao','weiming.mao','luli.dai','tao.zhou','jing.ban','zhoujun.wang');
$user = array('weiming.mao');
postmail_jiucool_com($user,$subject,$message);
?>