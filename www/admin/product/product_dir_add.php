<?php 
require_once("../inc/config_admin.php");
require_once("../inc/config_perm.php");

if(isset($_GET['dir1'])){
	$dirtree=$_GET['dir1'];
	$dirlevel=2;
	$fatherid=$_GET['dir1'];
}

if(isset($_GET['dir2'])){
	$dirtree.=','.$_GET['dir2'];
	$dirlevel=3;
	$fatherid=$_GET['dir2'];
}

if(isset($_GET['dir3'])){
	$dirtree.=','.$_GET['dir3'];
	$dirlevel=4;
	$fatherid=$_GET['dir3'];
}

if(isset($_GET['dir4'])){
	$dirtree.=','.$_GET['dir4'];
	$dirlevel=5;
	$fatherid=$_GET['dir4'];
}



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
        <td height="30" align="right">
        <?php if($onuserperm_addprem=='1'){?>
   <span  id="txt_addnewsdir1" style="cursor:pointer">添加一级目录</span>&nbsp;&nbsp;<span class="txt_vline">|</span>&nbsp;&nbsp;<span id="txt_addnewsdir2"  style="cursor:pointer">添加二级目录</span><?php }else{?>
      <span class="txt_addnewsdir" style="cursor:pointer">添加一级目录</span>&nbsp;&nbsp;<span class="txt_vline">|</span>&nbsp;&nbsp;<span class="txt_addnewsdir" style="cursor:pointer">添加二级目录</span><?php }?>
        </td>
      </tr>
    </table>
	<div id="lineout">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="36" align="left" background="../inc/pics/lanmubg.gif"><table width="200" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="32">&nbsp;</td>
              <td width="15"><img src="../inc/pics/lm_icon.gif" width="10" height="7"></td>
              <td width="153" class="txt_lanmu">添加分类</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
        </tr>
        <tr>
          <td align="center">
          
          <table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          
          <td align="center">&nbsp;</td>
          
        </tr>

        <tr>

          <td align="center"><table width="93%" border="0" cellspacing="0" cellpadding="0">

            <tr>

              <td height="30" align="left" valign="bottom" class="txt_leftmenu">

              <form action="#" method="post" name="form" id="form"  >

              <table width="100%" border="0" cellpadding="4" cellspacing="0" class="txt">

                  <tr bgcolor="#FFFFFF">
                    
                    <td width="91" valign="top" bgcolor="#FFFFFF">名称</td>
                    
                    <td bgcolor="#FFFFFF">
                    <input name="dirname" type="text" class="input_01" id="dirname" style="width:500px"  /></td>
                    
                  </tr>

                  <tr bgcolor="#FFFFFF">
                    
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    
                    <td bgcolor="#FFFFFF">
                      
                      <input class="submitbtn" type="button" name="button_ok" id="button_ok" value="提交" />
                      
                   </td>
                    
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
          
          
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
	</div>  
	  </td>
  </tr>
</table>
<script>

$(".submitbtn").click(function(){
	
	                $.post('ajax_adddir.php',{dirname:$('#dirname').val(),dirtree:'<?=$dirtree;?>',dirlevel:'<?=$dirlevel;?>',fatherid:'<?=$fatherid;?>'},function(data) {
							window.location.href="/admin/product/product_dir.php"; 
					 }); 
	
	})

</script>


<?php require "../footer.php"; ?>
</body>
</html>

