<?php 
/*
add 增加空界面 :01表示
add_s 提交入库：02表示
edit 编辑抽取：03表示
edit_s 编辑提交：04表示
del 删除：05表示
action 空动作：06表示
*/
require_once("../inc/config_admin.php");
require_once("../inc/config_perm.php");
 
 

 

if(isset($_POST[button_ok]) && $onuserperm_editprem=='1'){//修改

    $strSQL="UPDATE siteset SET title='".$_POST[title]."',keywords='".$_POST[keywords]."',description='".$_POST[description]."',
	otherheader='".$_POST[otherheader]."',statistics='".$_POST[statistics]."',rmailbox='".$_POST[rmailbox]."',smailbox='".$_POST[smailbox]."',
	smailboxpass='".$_POST[smailboxpass]."',icp='".$_POST[icp]."',mapcode='".$_POST[mapcode]."',iscopy='".$_POST[iscopy]."',isstyle='".$_POST[isstyle]."',weburl='".$_POST[weburl]."',productnum='".$_POST[productnum]."',newsnum='".$_POST[newsnum]."',bannertime='".$_POST[bannertime]."',pagetransition='".$_POST[pagetransition]."',tag='".$_POST[tag]."' where id_siteset='1'";
	$objDB->Execute($strSQL);

}

$strSQL="SELECT * FROM siteset WHERE id_siteset='1'";
$objDB->Execute($strSQL);
$arrsiteset=$objDB->fields();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $companytitle;?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../inc/style_admin.css" rel="stylesheet" type="text/css">
<script src="../inc/js/jquery.js" type="text/javascript"></script>
</head>
<body>
<?php require "../header.php"; ?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="87.9%">
  <tr> 
    <td width="15%" align="left" valign="top" bgcolor="#E7F1F8">
	<?php require "../leftmenu.php"; ?>
      </td>
    <td width="75%" align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="30" align="right">&nbsp;</td>
      </tr>
    </table>
      <div id="lineout">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="36" align="left" background="../inc/pics/lanmubg.gif"><table width="200" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="32">&nbsp;</td>
              <td width="15"><img src="../inc/pics/lm_icon.gif" width="10" height="7"></td>
              <td width="153" class="txt_lanmu">站点设定</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td align="center"><table width="93%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" align="left" valign="bottom" class="txt_leftmenu">
              <form action="siteset.php" method="post" name="form" id="form"  onsubmit="return OnCheck(this);" >
              <table width="100%" border="0" cellpadding="4" cellspacing="0" class="txt" bgcolor="#FFFFFF">
                  <tr>
                    <td width="91" height="30" align="left" valign="middle">站点标题Title</td>
                    <td  align="left" valign="middle"><input name="title" type="text" class="input_01" id="title" style="width:300px" value="<?php echo $arrsiteset[title];?>" /></td>

                      <td align="left" valign="middle">（SEO全局设定）</td>
                    </tr>
                  <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                  <tr>
                    <td height="30" align="left" valign="middle">页面关健词Key</td>
                    <td align="left" valign="middle"><input name="keywords" type="text" class="input_01" id="keywords" style="width:300px" value="<?php echo $arrsiteset[keywords];?>" /></td>
                    <td align="left" valign="middle">（SEO关健词全局设定），关健词用“,”分隔</td>
                  </tr>
                  <tr>
                      <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                  </tr>
                  <tr>
                      <td height="30" align="left" valign="middle">页面标签Tag</td>
                      <td align="left" valign="middle"><input name="tag" type="text" class="input_01" id="tag" style="width:300px" value="<?php echo $arrsiteset[tag];?>" /></td>
                      <td align="left" valign="middle">（SEO页面标签全局设定），关健词用“,”分隔</td>
                  </tr>
                  <tr>
                      <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                  </tr>
                  <tr>
                    <td height="30" align="left" valign="top">页面描述</td>
                    <td align="left" valign="middle">
                        <textarea name="description" rows="5" class="input_01" id="description" style="width:300px"><?php echo $arrsiteset[description];?></textarea>
                    </td>
                    <td align="left" valign="middle">（SEO描述全局设定），页面描述</td>
                  </tr>


<!--                                    <tr>-->
<!--                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>-->
<!--                    </tr>-->
<!--                                    <tr>-->
<!--                                      <td height="30" align="left" valign="top">其他头部信息</td>-->
<!--                                      <td width="302" align="left" valign="top"><textarea name="otherheader" rows="5" class="input_01" id="otherheader" style="width:300px">--><?php //echo $arrsiteset[otherheader];?><!--</textarea>                                    -->
<!--                                      <td width="420" align="left" valign="top">如需在 &lt;head&gt;&lt;/head&gt; 中添加其他的 HTML 代码<br />-->
<!--                                      可以使用本设置，否则请留空                                    </tr>-->
<!--                                      <tr>-->
<!--                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>-->
<!--                    </tr>-->
<!--                        <tr>-->
<!--                    <td height="30" align="left" valign="middle">网站防拷贝</td>-->
<!--                    <td colspan="2" align="left" valign="middle"><input type="radio" name="iscopy" id="iscopy1" value="1" --><?php //if($arrsiteset[iscopy]=='1'){echo 'checked';}?><!-- />-->
<!--                      是                      <input name="iscopy" type="radio" id="iscopy2" value="0" --><?php //if($arrsiteset[iscopy]=='0'){echo 'checked';}?><!--  />-->
<!--否                                        </tr>-->
                  <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                  </tr>
                  <tr>
                    <td height="30" align="left" valign="middle">手机绑定URL</td>
                    <td colspan="2" align="left" valign="middle"><?php echo $siteurl;?></td>                                  
                  </tr>
                                      <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                                      <tr>
                    <td height="30" align="left" valign="middle">网站URL</td>
                    <td align="left" valign="middle"><input name="weburl" type="text" class="input_01" id="weburl" style="width:300px" value="<?php echo $arrsiteset[weburl];?>" /> </td>
                    <td align="left" valign="middle">非智能手机、移动设备访问时跳转至网站URL</td>                                  
                        </tr>
                        
                        <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                                   <tr>
                                      <td height="30" align="left" valign="middle">电话</td>
                                      <td colspan="2" align="left" valign="middle"><input name="smailbox" type="text" class="input_01" id="smailbox" style="width:300px" value="<?php echo $arrsiteset[smailbox];?>" /></td>
                                    </tr>
                        
       
             <tr>
                    <td height="30" align="left" valign="middle">邮箱</td>
                    <td colspan="2" align="left" valign="middle"><input name="rmailbox" type="text" class="input_01" id="rmailbox" style="width:300px" value="<?php echo $arrsiteset[rmailbox];?>" /></td>
                  </tr>
                                 
                  <!--                     <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                                         <!--    <tr>
                                      <td height="30" align="left" valign="middle">发件箱密码</td>
                                      <td colspan="2" align="left" valign="middle"><input name="smailboxpass" type="text" class="input_01" id="smailboxpass" style="width:300px" value="<?php echo $arrsiteset[smailboxpass];?>" /></td>
                                    </tr>-->
                                   <!--      <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                      <tr>
                    <td height="30" align="left" valign="middle">网站备案号</td>
                    <td colspan="2" align="left" valign="middle"><input name="icp" type="text" class="input_01" id="icp" style="width:300px" value="<?php echo $arrsiteset[icp];?>" /></td>
                  </tr>-->
                  
<!--                                    <tr>-->
<!--                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>-->
<!--                    </tr>-->
<!--                                            <tr>-->
<!--                    <td height="30" align="left" valign="middle">新闻每页数量</td>-->
<!--                    <td align="left" valign="middle"><input name="newsnum" type="text" class="input_01" id="newsnum" style="width:100px" value="--><?php //echo $arrsiteset[newsnum];?><!--" /></td>-->
<!--                    <td align="left" valign="middle">&nbsp;</td>-->
<!--                        </tr>-->
<!--                  -->
<!--                                    <tr>-->
<!--                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>-->
<!--                    </tr>-->
<!--                                                                <tr>-->
<!--                    <td height="30" align="left" valign="middle">产品每页数量</td>-->
<!--                    <td align="left" valign="middle"><input name="productnum" type="text" class="input_01" id="productnum" style="width:100px" value="--><?php //echo $arrsiteset[productnum];?><!--" /></td>-->
<!--                    <td align="left" valign="middle">&nbsp;</td>-->
<!--                        </tr>-->
                  
                                    <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                    
                                <!-- <tr>
                                      <td height="30" align="left" valign="top">幻灯片切换频率</td>
                                      <td colspan="2" align="left" valign="middle"><input name="bannertime" type="text" class="input_01" id="bannertime" style="width:100px" value="<?php echo $arrsiteset[bannertime];?>" /></td>
                                    </tr>
                                                                        <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>-->
                    
                                  <!--<tr>
                                      <td height="30" align="left" valign="top">页面转场特效</td>
                                      <td align="left" valign="middle">
       <select name="pagetransition" id="pagetransition">
           <option value="flip" <?php if($arrsiteset[pagetransition]=='flip'){echo 'selected';}?>>3D旋转</option>
           <option value="fade" <?php if($arrsiteset[pagetransition]=='fade'){echo 'selected';}?>>淡入淡出</option>
           <option value="pop" <?php if($arrsiteset[pagetransition]=='pop'){echo 'selected';}?>>弹出</option>
           <option value="turn" <?php if($arrsiteset[pagetransition]=='turn'){echo 'selected';}?>>翻转</option>
           <option value="flow" <?php if($arrsiteset[pagetransition]=='flow'){echo 'selected';}?>>飘动</option>
<option value="slidefade" <?php if($arrsiteset[pagetransition]=='slidefade'){echo 'selected';}?>>向左消失</option>
<option value="slide" <?php if($arrsiteset[pagetransition]=='slide'){echo 'selected';}?>>幻灯片</option>
<option value="slideup" <?php if($arrsiteset[pagetransition]=='slideup'){echo 'selected';}?>>上升</option>
<option value="slidedown" <?php if($arrsiteset[pagetransition]=='slidedown'){echo 'selected';}?>>下降</option>
           <option value="none" <?php if($arrsiteset[pagetransition]=='none'){echo 'selected';}?>>无特效</option>
        </select>
                                      </td>
                                      <td align="left" valign="middle">前台浏览器需清空缓存才可生效</td>
                        </tr> -->
                    
                    
                    
                                    <tr>
                                      <td height="30" align="left" valign="top">百度<br />
                                      地图坐标</td>
                                      <td align="left" valign="middle"><textarea name="mapcode" rows="5" class="input_01" id="mapcode" style="width:300px"><?php echo $arrsiteset[mapcode];?></textarea></td>
                                      <td align="left" valign="middle"><p>百度地图坐标获取地址：</p>
                                      <p>http://api.map.baidu.com/lbsapi/creatmap/</p></td>
                                    </tr>
                                     <tr>
                    <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                    </tr>
                        <tr>
                    <td height="30" align="left" valign="top">统计代码</td>
                    <td colspan="2" align="left" valign="middle"><textarea name="statistics" rows="5" class="input_01" id="statistics" style="width:300px"><?php echo $arrsiteset[statistics];?></textarea></td>
                  </tr>
                  <tr>
                    <td height="30" valign="top">&nbsp;</td>
                    <td colspan="2">
         <?php if($onuserperm_editprem==1){?> <input class="btn" type="submit" name="button_ok" id="button_ok" value="设定" /><? }?></td>
                  </tr>
              </table>
              </form></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
	</div>  
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table> 
    </td>

  </tr>
</table>
<?php require "../footer.php"; ?>
</body>
</html>

