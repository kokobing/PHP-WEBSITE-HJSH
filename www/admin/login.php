<?php
require_once("inc/config_admin.php");

if(isset($_GET[act]) && $_GET[act]=="in"){
 
    if($_SESSION["login_check_num"]==$_POST[number]){

	$strSQL="select * from hr where user ='$_POST[Fusername]' and password ='$_POST[Fpassword]' and dele!='0'";
	$objDB->Execute($strSQL);
	$arrMember=$objDB->fields();
	
	 if(count($arrMember)!='1'){
		        $_SESSION[user_id]=$arrMember[id_hr];
		        $_SESSION[user_name]=$arrMember[user];
		        $_SESSION[user_level]=$arrMember[post];
				$strSQL="UPDATE hr SET logindate=now(),loginip='".$_SERVER["REMOTE_ADDR"]."' where id_hr=$arrMember[id_hr]";
	            $objDB->Execute($strSQL);//更新登陆时间
		        $str_msg="恭喜您,登录成功...<meta http-equiv='refresh' content='1;url=main.php'>";
		   }else{
		        $str_msg="用户名或密码填写错误，请返回重新填写...<br><br><a href='javascript:history.go(-1)' class='link_01'><strong>返 回</strong></a>";
		        }	

	
   }else{
			$str_msg="验证码填写错误，请返回重新填写...<br><br><a href='javascript:history.go(-1)' class='link_01'><strong>返 回</strong></a>";
	       }

	
}

if(isset($_GET[act]) && $_GET[act]=="out"){
	session_unregister(user_id);
	session_unregister(user_name);
	session_unregister(user_level);
	$str_msg="成功退出管理系统...<meta http-equiv='refresh' content='1;url=index.php'>";
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $companytitle;?></title>
<link href="inc/style_index.css" rel="stylesheet" type="text/css">
</head>

<BODY>
<DIV class=mainbox>
<DIV class=welcome>
<div style="position:absolute;right:0px;top:0px; font-size:90px;color:#fff; font-family:黑体;filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5;"><?=$indexlogin_top;?></div>
<DIV class=login2 style="position:relative">
<div style="position:absolute;top:190px;left:170px;">
<div style="font-size:38px;color:#fff; font-family:Arial, Helvetica, sans-serif"><?=$indexlogin_top1;?></div>
<div style="font-size:20px;color:#4b4b4b; font-family:黑体"><?=$indexlogin_top2;?></div>
</div>
<P  style="PADDING-TOP:115px"><?php echo $str_msg; ?></P>
</DIV>

</DIV></DIV>
<div  style=" margin-top:-70px; margin-left:-250px"><span class=txt><?=$indexlogin_bottom;?></span> </div>
</BODY></HTML>

