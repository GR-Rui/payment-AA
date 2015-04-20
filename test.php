<?php
include("conn.php"); 
function postmail_jiucool_com($to,$subject = "",$body = ""){
    //Author:Jiucool WebSite: http://www.jiucool.com 
    //$to 表示收件人地址 $subject 表示邮件标题 $body表示邮件正文
    //error_reporting(E_ALL);
    error_reporting(E_STRICT);
    date_default_timezone_set("Asia/Shanghai");//设定时区东八区
    require_once('PHPMailer_5.2.0/class.phpmailer.php');
    include("PHPMailer_5.2.0/class.smtp.php"); 
    $mail             = new PHPMailer(); //new一个PHPMailer对象出来
    $body             = eregi_replace("[\]",'',$body); //对邮件内容进行必要的过滤
    $mail->CharSet ="UTF-8";//设定邮件编码，默认ISO-8859-1，如果发中文此项必须设置，否则乱码
    $mail->IsSMTP(); // 设定使用SMTP服务
    $mail->SMTPDebug  = 1;                     // 启用SMTP调试功能
                                           // 1 = errors and messages
                                           // 2 = messages only
    $mail->SMTPAuth   = true;                  // 启用 SMTP 验证功能
    $mail->SMTPSecure = "ssl";                 // 安全协议
    $mail->Host       = "smtp.gmail.com";      // SMTP 服务器
    $mail->Port       = 465;                   // SMTP服务器的端口号
    $mail->Username   = "gaoruiai521@gmail.com";  // SMTP服务器用户名
    $mail->Password   = "19851012521";            // SMTP服务器密码
    $mail->SetFrom('rui.gao@neulion.cn', 'rui.gao');
    $mail->AddReplyTo('rui.gao@neulion.cn', 'rui.gao');
    $mail->Subject    = $subject;
    $mail->AltBody    = "To view the message, please use an HTML compatible email viewer! - From www.jiucool.com"; // optional, comment out and test
    $mail->MsgHTML($body);
    $address = $to;
	//print_r($);
	
	
	foreach($to as $t){
		$user = getUserByName($t);
		$mail->AddAddress($user["user_mail"], $user["user_name"]);
	}
    //$mail->AddAddress($address, "gg");
    //$mail->AddAttachment("images/phpmailer.gif");      // attachment 
    if(!$mail->Send()) {
        echo "Mailer Error: " . $mail->ErrorInfo;
		return false;
    } else {
        echo "Message sent!恭喜，邮件发送成功！";
		return true;
        }
    }

//turn array to string
function arrayToString($arr){
	$num = 0;
	$rs = '';
	if($arr != null){
		foreach($arr as $a){
			$rs .= $a;
			$num++;
			if($num < count($arr))
			$rs .= ',';
		}
	}
	return $rs;
}

function updateAccount($arr, $aver){
	foreach($arr as $a){
		//$sql="";
		$sql = "UPDATE `lunch`.`user_info` SET `user_money` = `user_money`- $aver WHERE `user_info`.`user_name` ='$a'"; 
		//echo $sql;
		mysql_query($sql);
	}
}
function AddAccount($user,$total){
	$sql = "UPDATE `lunch`.`user_info` SET `user_money` = `user_money`+ $total WHERE `user_info`.`user_name` ='$user'"; 
	//echo $sql;
	mysql_query($sql);
}
function getUserByName($name){
	$sql = "select * from user_info where user_name = '$name'";
	$rs = mysql_fetch_array(mysql_query($sql));
	return $rs;
}
//print_r(getUserByName('rui.gao'));
//$arr = array('rui.gao','tao.zhou');
//$aver = 10;
//updateAccount($arr, $aver);	
//postmail_jiucool_com("gaoruiai_521@163.com","hello","kkkkkkkkkkkkkkkkkkk");
?>