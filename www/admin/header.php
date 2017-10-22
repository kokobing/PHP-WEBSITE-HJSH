<?php
//取出信息
$strSQL="SELECT a.id_hr,a.name,a.user,a.logindate,a.loginip,b.post FROM hr as a left join post as b on a.post=b.id_post  WHERE  a.id_hr=$_SESSION[user_id] and a.dele='1'";
$objDB->Execute($strSQL);
$arruser=$objDB->fields();
?>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="69%" height="73" align="center" valign="bottom" background="/admin/inc/pics/topbg.gif"><table width="98%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="left" class='txt_logo'><?php echo $logo_text;?></td>
      </tr>
      <tr>
        <td width="26" align="left" valign="middle"><img src="/admin/inc/pics/ironman512.png" width="21" /></td>
        <td width="806" height="30" align="left" valign="middle"  class='txt'><a href="#" class='link_weluser' title="<?php echo $arruser[post];?>"><?php echo $arruser[user];?></a> 欢迎您,上一次登陆时间为:<?php echo $arruser[logindate];?> IP:<?php echo $arruser[loginip];?> </td>
        </tr>
    </table></td>
    <td width="31%" align="right" background="/admin/inc/pics/topbg.gif"><table width="100%" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="6" align="right"><table width="95%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="85%" align="right" class="txt_4"><?php require_once("inc/riqi.php"); ?></td>
            <td width="15%" align="right" class="txt_4"><div id="Today"></div>
<script language="JavaScript">
var a=0; 
function clock() {
sec=<?php echo strtotime('8 hours')?>+a; //(GMT+8:00)时区:中国标准时间
S=sec%60; //秒
I=Math.floor(sec/60)%60; //分
H=Math.floor(sec/3600)%24; //时
if(S<10) S='0'+S;
if(I<10) I='0'+I;
if(H<10) H='0'+H;
timeStr=H+':'+I+':'+S;
$("#Today").html(timeStr);
a++;
}
clock(); //这行可以不要,只为初始化...
setInterval(clock,1000);
</script>          </td>
          </tr>
          <tr>
          <td colspan="2" align="right" class="txt_4">
              <iframe allowtransparency="true" frameborder="0" width="200" height="28" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=3&z=1&t=1&v=0&d=1&bd=0&k=&f=&q=1&e=0&a=1&c=54511&w=317&h=28&align=center"></iframe>

</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="77%" align="right" valign="middle"><img src="/admin/inc/pics/icon-06.png" width="18"  /></td>
        <td width="9%" align="center" valign="middle"><a href="/admin/main.php" class="link_rightmenu">桌面</a></td>
        <td width="6%" align="right" valign="middle"><img src="/admin/inc/pics/righticon3.gif" width="16" height="20" /></td>
        <td width="8%" align="center" valign="middle"><a href="<? echo "/admin/login.php?act=out" ?>" class="link_rightmenu">注销</a></td>
      </tr>
    </table></td>
  </tr>
</table>

