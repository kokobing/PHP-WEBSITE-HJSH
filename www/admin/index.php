<?
require_once("inc/config_admin.php");
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $companytitle;?></title>
<link href="inc/style_index.css" rel="stylesheet" type="text/css">
<STYLE type=text/css>
.txt { font-size: 9pt; color: #494949; text-decoration: none; line-height: 20px; } 
.link_01 { font-size: 9pt; color: #494949; text-decoration: none;}
a.link_01:hover { color: #006666; text-decoration: none} 
</STYLE>
<SCRIPT language=JavaScript><!--
function check()  {
	if (document.login.Fusername.value=="")  {
		alert("请输入用户名！");
		document.login.Fusername.focus();
		return false;
	}
	if (document.login.Fpassword.value=="")  {
		alert("请输入密码！");
		document.login.Fpassword.focus();
		return false;
	}
	
}
//-->
</SCRIPT>
</head>

<BODY>
<DIV class=mainbox>
<DIV class=welcome>
<div style="position:absolute;right:0px;top:0px; font-size:90px;color:#fff; font-family:黑体;filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5;"><?=$indexlogin_top;?></div>
<DIV class=login style="position:relative">
<div style="position:absolute;top:190px;left:170px;">
<div style="font-size:38px;color:#fff; font-family:Arial, Helvetica, sans-serif"><?=$indexlogin_top1;?></div>
<div style="font-size:20px;color:#4b4b4b; font-family:黑体"><?=$indexlogin_top2;?></div>
</div>
<form action="login.php?act=in" method="post" onSubmit="return check();" name="login">
<P><input name="Fusername" type="text" id="Fusername" style="width:200"></P>
<P style="PADDING-TOP: 9px"><input name="Fpassword" type="password"  id="Fpassword" style="width:200"></P>
<P style="PADDING-TOP: 9px;"><table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69"> <input name=number type=text  size="4" maxlength=4></td>
    <td width="131"><img src=inc/checknum.class.php></td>
  </tr>
</table>
</P>
<P><input name="Submit" type="submit" class="submit" value="登陆">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</P></form></DIV></DIV></DIV>
<div  style=" margin-top:-70px; margin-left:-250px"><span class=txt><?=$indexlogin_bottom;?></span> </div>
</BODY></HTML>

