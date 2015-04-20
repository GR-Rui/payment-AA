<?php
if(date_default_timezone_get() != "1Asia/Shanghai") 
	date_default_timezone_set("Asia/Shanghai");
$t1 = 0;
$t2 = 0;
$t3 = 0;	
//消费明细
$s1 = '<h2>消费明细</h2>
<table border="0" cellspacing="0">';
if($personalExpense != null){
	$s1 .= '<tr><th height="35" align="left" width="100">花费</th><th height="35" align="left" width="100">地点</th><th height="35" align="left" width="200">时间</th></tr>';
	foreach($personalExpense as $p){
		$s1 .= '<tr>';
		$s1 .= '<td height="35" align="left" width="100">'.$p["order_aver"].'</td>';
		$s1 .= '<td height="35" align="left" width="100">'.$p["order_address"].'</td>';
		$s1 .= '<td height="35" align="left" width="200">'.$p["order_time"].'</td>';
		$s1 .= '</tr>';
		$t1 += $p["order_aver"];
	}
}else{
	$s1 .= '<tr><td>No Data</td></tr>';
}
$s1 .= '</table>';

//收入/支出 明细
$s2 = '<h2>存入/支出 明细</h2>
<table border="0" cellspacing="0">';
if($income != null){
	$s2 .= '<tr><th height="35" align="left" width="100">存入</th><th height="35" align="left" width="100">地点</th><th height="35" align="left" width="200">时间</th></tr>';
	foreach($income as $i){
		$s2 .= '<tr>';
		$s2 .= '<td height="35" align="left" width="100">'.$i["order_total"].'</td>';
		$s2 .= '<td height="35" align="left" width="100">'.$i["order_address"].'</td>';
		$s2 .= '<td height="35" align="left" width="200">'.$i["order_time"].'</td>';
		$s2 .= '</tr>';
		$t2 += $i["order_total"];
	}
}else{
	$s2 .= '<tr><td>No Data</td></tr>';
}
$s2 .= '</table>';
$t3 = $remain["user_money"]+$t1-$t2;
$subject = "Personal Account( $month )";
//header
$m1 = '
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Expense Account</title>
</head>
<body>
<h2>本人当前余额（截止日期：'.date('Y-m-d H:i:s').'）</h2>
<p><font color="red">'.$remain["user_money"].'</font><p>';
//footer
$m2 = '<h2>小结：</h2>
<p>'.$remain["user_money"].'（本月余额）+ '.$t1.'（本月消费）- '.$t2.'（存入金额）= <font color="red">'.$t3.'（上次账单余额，请核对是否一致）</font></p>
</body>
</html>';
$message = $m1.$s1.$s2.$m2;
?>
