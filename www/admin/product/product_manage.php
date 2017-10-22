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
require_once("../inc/navipage.php");
require_once("../inc/function.class.php");
require_once("../inc/js/ckeditor/ckeditor.php");//引用fck
require_once("../inc/js/ckfinder/ckfinder.php");//引用fck


$oFCKeditor = new CKEditor();
$oFCKeditor->returnOutput = true; //设置输出可用变量的情况
$oFCKeditor->basePath = '../inc/js/ckeditor/';//设置路径
$oFCKeditor->config['width'] ='100%';
CKFinder::SetupCKEditor($oFCKeditor, '../inc/js/ckfinder/') ;

	
if(isset($_GET[Rows])){//SESSION记忆行数
	$_SESSION[Rowsnum]=$_GET[Rows];
	header('Location:product_manage.php');ob_end_flush(); exit();//跳转
}
	

$action=$_SERVER["QUERY_STRING"];

//交换位置
	if(isset($_GET["action"]) && $_GET["action"]=="switch"){
		$strSQL="UPDATE productinfo SET ordernum=".$_GET[swtorder]." WHERE id_prodinfo=".$_GET[id]."";
		$objDB->Execute($strSQL);
		$strSQL="UPDATE productinfo SET ordernum=".$_GET[order]." WHERE id_prodinfo=".$_GET[swtid]."";	
		$objDB->Execute($strSQL);
	    header('Location:product_manage.php?&searchselect='.$_GET[searchselect].'&searchdate=&keywords=&page='.$_GET[page]); exit();//跳转
	}

  $newstitle=$_POST[newstitle];//项目标题
  $newstitle=str_replace("'","&acute;",$newstitle);
  
  $select2=$_POST[select2]; //二级项目目录

  $newscontent=$_POST[newscontent]; //项目内容
  $newscontent=str_replace("'","&acute;",$newscontent);
  
  $newsintro=$_POST[intro]; //项目简介

  $newstag=$_POST[tag];

    $pagetitle=$_POST[pagetitle];
    $pagekey=$_POST[pagekey];
    $pagetag=$_POST[pagetag];
    $pagedesc=$_POST[pagedesc];
  

  $keywords=$_REQUEST[keywords];

  $searchselect=$_REQUEST[searchselect];

  

  $arrParam[0][name]="searchselect";

  $arrParam[0][value]=$searchselect;

  

  $arrParam[1][name]="keywords";

  $arrParam[1][value]=$keywords;

  

  if($searchselect!=""){

  $str=" and productdir.id_proddir=".$_REQUEST[searchselect]." ";

  }else{

  $str="";

  }

  

  if($keywords!=""){

  $str.=" and productinfo.title like '%".$_REQUEST[keywords]."%' ";

  }else{

  $str.="";

  }





//输出一级目录  

  $strSQL="SELECT id_proddir,name FROM productdir3 where dele='1' and level='1'";

  $objDB->Execute($strSQL);

  $arr1dir=$objDB->GetRows();



//取出项目项目 start

if(isset($action) && ($action=="" || substr($action,0,14)=='&searchselect=')){

if(isset($_REQUEST["page"]) ){$intCurPage=$_REQUEST["page"];}else{$intCurPage=1;}

if(isset($_SESSION[Rowsnum])){$intRows = $_SESSION[Rowsnum];}else{$intRows = 10;}//如果SESSION记忆行数存在 则行数为记忆 否则默认10

$strSQLNum = "SELECT COUNT(*) as num from productinfo left join productdir3 on productinfo.id_proddir=productdir3.id_proddir WHERE productinfo.dele='1' $str";

$rs = $objDB->Execute($strSQLNum);

$arrNum = $objDB->fields();

$intTotalNum=$arrNum["num"];



$objPage = new PageNav($intCurPage,$intTotalNum,$intRows);



$objPage->setvar($arrParam);

$objPage->init_page($intRows ,$intTotalNum);

$strNavigate = $objPage->output(1);

$intStartNum=$objPage->StartNum(); 



$strSQL = "SELECT productinfo.id_prodinfo,productinfo.id_proddir,productdir3.name,productinfo.title,productinfo.content,productinfo.ordernum,productdir3.lang FROM productinfo left join productdir3 on productinfo.id_proddir=productdir3.id_proddir WHERE productinfo.dele='1' $str order by productinfo.ordernum DESC" ;

$objDB->SelectLimit($strSQL,$intRows,$intStartNum);

$arrproductinfos=$objDB->GetRows();

$intNews=sizeof($arrproductinfos);

}//取出项目项目 end



//初始化搜索下拉列表
  $strSQL="SELECT id_proddir,name FROM productdir3 WHERE dele='1' and level='2' and lang=0 order by ordernum asc";
  $objDB->Execute($strSQL);
  $arr2dirsearch=$objDB->GetRows();
  
  $strSQL="SELECT id_proddir,name FROM productdir3 WHERE dele='1' and level='2' and lang=1 order by ordernum asc";
  $objDB->Execute($strSQL);
  $arr2dirsearch2=$objDB->GetRows();




//添加项目入库

if(isset($action) && $action=='01' && $onuserperm_addprem=='1'){



	$strSQL="INSERT INTO productinfo(title,content,id_proddir,indate,intro,tag) 

	                     values('新增空白项目','','17',now(),'','')";

	$objDB->Execute($strSQL);
	
	$ordernumid=$objDB->getInsertID();//获取插入到数据库记录的ID号
	$strSQL="UPDATE productinfo SET ordernum='$ordernumid'   where id_prodinfo='$ordernumid'";
	$objDB->Execute($strSQL);

    header('Location:product_manage.php'); exit();

}	

//编辑项目入库

if(isset($action) && substr($action,0,2)=="04" && $onuserperm_editprem=='1'){

    $exaction=explode('&',$action);

	$oneproductinfoid=substr($exaction[0],2);
	



//组装目录树
for($i=0;$i<=$_POST[selectNum];$i++){
  if($_POST['C_dir'.$i]!=0){	
	 $dirtree.=$_POST['C_dir'.$i];
	 if($i!=$_POST[selectNum]){$dirtree.=',';}
   }else{
	 $dirtree= substr($dirtree,0,strlen($dirtree)-1);  
   }
   $last_dir=explode(',',$dirtree);//折分目录数 $last_dir[sizeof($last_dir)-1] 最后一个目录ID
}
$last_dir=$last_dir[sizeof($last_dir)-1];

	

    $strSQL="UPDATE productinfo SET dirtree ='$dirtree',title='$newstitle',content='$newscontent',id_proddir='$last_dir',modate=now(),intro='$newsintro',tag='$newstag',pagetitle='$pagetitle',pagekey='$pagekey',pagetag='$pagetag',pagedesc='$pagedesc' where id_prodinfo=$oneproductinfoid";

	$objDB->Execute($strSQL);

	header('Location:product_manage.php?03'.$oneproductinfoid.'&searchselect='.$searchselect.'&keywords='.$keywords.'&modify=1'); exit();

}	




?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title><?php echo $companytitle;?></title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="../inc/style_admin.css" rel="stylesheet" type="text/css">
<style type="text/css">
.link_dir2{ font-size: 9pt; color: #494949; text-decoration: none;}
a.link_dir2:hover { color: #000; text-decoration: none;font-weight:bold } 

.link_dir2s{ font-size: 9pt; color:#F00; text-decoration: none;font-weight:bold }
a.link_dir2s:hover { color: #000; text-decoration: none;font-weight:bold } 


</style>

<script src="../inc/js/jquery.js" type="text/javascript"></script>
<script src="../inc/js/jquery.ui.draggable.js" type="text/javascript"></script>
<script src="../inc/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="../inc/js/jquery.uploadifive.min.js"></script>

<script language="javascript">

$(function(){$("#select1").change(function(){$("#select2").load("dir2select.php?select1="+$("#select1").val());});});

</script>

<?php if($onuserperm_deleprem=='1'){?>

<script type="text/javascript">

function delenews(val1) {//val1项目id

				var delenews=val1;

					popprompt_del('确认删除项目:', '', delenews, function(isdel) {

						  if (isdel) {$.post('ajax_delenews.php',{val1:val1,isdel:isdel},function(data){

                             var myjson = '';eval('myjson=' + data + ';');

                             popmessage(myjson.info, '友情提醒!',function() {window.location.reload();}); });

                          };

					});

}



function needupfile(upid,upfilepath,upfiletype,indatafile){

 popneedupfile('','文件上传!',upid,upfilepath,upfiletype,indatafile,function() {});

}



function neededitupfile(picid){

 $.post('/admin/inc/ajax_getfiles.php',{picid:picid,datasheet:'productpic'},function(data){

                            var myjson = '';eval('myjson=' + data + ';');

                            popneededitupfile('','文件编辑',myjson.datasheet,myjson.getfileid,myjson.getfiletype,myjson.getfiletitle,myjson.getfileintro,myjson.getfileurl,myjson.getfilename,function() {});

							

							});



}





function delpic(picid){

					pop_confirm_m('确认删除图片:', '', picid, function(picid) {

						  $.post('ajax_delenewpic.php',{picid:picid},function(data){

                            var myjson = '';eval('myjson=' + data + ';');

                            popmessage(myjson.info, '友情提醒!');

							$("#pickuang").html(myjson.str);
							window.location.reload();

							});

					});

}

</script>

<?php }?>



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

        <a href="product_manage.php?01" class="txt_addnews" >添加项目</a>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <?php }?>

        </td>

      </tr>

    </table>

    <?php if(isset($action)  && ($action=="" || substr($action,0,14)=='&searchselect=')){?>

	<div id="lineout">

      <table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>

          <td width="77%" height="36" align="left" background="../inc/pics/lanmubg.gif"><table width="200" border="0" cellspacing="0" cellpadding="0">

            <tr>

              <td width="32">&nbsp;</td>

              <td width="15"><img src="../inc/pics/lm_icon.gif" width="10" height="7"></td>

              <td width="153" class="txt_lanmu">项目管理</td>

            </tr>

          </table></td>
          <td width="23%" align="center" background="../inc/pics/lanmubg.gif"  class="txt">每页显示 <a href="product_manage.php?Rows=5" class="link_rightmenu">5</a> <a href="product_manage.php?Rows=10"  class="link_rightmenu">10</a> <a href="product_manage.php?Rows=15" class="link_rightmenu">15</a> <a href="product_manage.php?Rows=20" class="link_rightmenu">20</a> <a href="product_manage.php?Rows=25" class="link_rightmenu">25</a> <a href="product_manage.php?Rows=30" class="link_rightmenu">30</a></td>

        </tr>

        <tr>

          <td colspan="2" align="center">&nbsp;</td>

        </tr>

        <tr>

          <td colspan="2" align="center"><table width="95%" border="0" cellspacing="0" cellpadding="0"  id="otable">

		   <?php for($i=0;$i<$intNews;$i++) {
			   
			   		$strSQL="SELECT opicname,id_prodpic FROM productpic WHERE id_prodinfo='".$arrproductinfos[$i][id_prodinfo]."' order by id_prodpic asc limit 1";
                    $objDB->Execute($strSQL);
                    $picone=$objDB->fields();
			   ?>

            <tr>

              <td height="30" align="left" valign="bottom" class="txt_leftmenu">

              <table width="100%" border="0" cellspacing="3" cellpadding="0" >

                  <tr>

                    <td align="left" width="18%" class="txt_leftmenu">[ <?php echo $arrproductinfos[$i][name]?> ]</td>

                    <td width="46%" align="left"><a href="product_manage.php?03<?php echo $arrproductinfos[$i][id_prodinfo]?>&searchselect=<?php echo $searchselect;?>&keywords=<?php echo $keywords;?>"  class="txt_leftmenu"><?php echo cutstr($arrproductinfos[$i][title],60,1);?></a></td>
                    <td width="13%" align="left">
                      <? if($picone[opicname]!=''){?>
                      <a href="javascript:void(0)"  onclick="$.wholepop.dialogClass ='style_1';poppic('<?php echo $siteurl;?>/upload/product/<?php echo $picone[opicname];?>','Product Overview','<?php echo $picone[id_prodpic];?>');"> <img src="/upload/product/<?php echo $picone[opicname];?>" width="40" height="40" border="0" id="" /></a>
                      <? }else{?>
                      <a href="javascript:void(0)"  > 
                        <img src="/admin/inc/pics/nopic.gif" width="40" height="40" border="0"  /> 
                        </a>
                      <? }?>
                    </td>

                    <td width="5%" align="left">

        <?php if($onuserperm_deleprem=='1'){?>

        <span class="txt_addnews" style="cursor:pointer" onclick=delenews(<?php echo $arrproductinfos[$i][id_prodinfo];?>);>删除</span><?php }?></td>
                    <td width="5%" align="left"> <? if($i!=0){ //判断一级目录是否位置在最前?>
<a href='product_manage.php?action=switch&id=<?=$arrproductinfos[$i][id_prodinfo];?>&order=<?=$arrproductinfos[$i][ordernum];?>&swtid=<?=$arrproductinfos[$i-1][id_prodinfo];?>&swtorder=<?=$arrproductinfos[$i-1][ordernum];?>&page=<?=$_GET[page];?>&searchselect=<?=$_GET[searchselect];?>'><img src='../inc/pics/icon_001.gif' border='0' width='10' height='10'></a>&nbsp;
			<? }else {?>
<img src='../inc/pics/icon_0012.gif' border='0' width='10' height='10'>&nbsp;
			 
			<? } if($i!=$intNews-1){//判断一级目录是否位置在最后?>
<a href='product_manage.php?action=switch&id=<?=$arrproductinfos[$i][id_prodinfo];?>&order=<?=$arrproductinfos[$i][ordernum];?>&swtid=<?=$arrproductinfos[$i+1][id_prodinfo];?>&swtorder=<?=$arrproductinfos[$i+1][ordernum];?>&page=<?=$_GET[page];?>&searchselect=<?=$_GET[searchselect];?>'><img src='../inc/pics/icon_002.gif' border='0' width='10' height='10'></a>&nbsp;
			<? } else{ ?>
<img src='../inc/pics/icon_0022.gif' border='0' width='10' height='10'>&nbsp;
			<? }?>              </td>

                  </tr>

                   <tr>

                    <td colspan="5" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>

                    </tr>

              </table></td>

            </tr>

			<?php }?>

          </table></td>

        </tr>

        <tr>

          <td colspan="2" align="center"><?php echo $strNavigate;?></td>

        </tr>

        <tr>

          <td colspan="2">&nbsp;</td>

        </tr>

      </table>

	</div>  

<?php }?>


    <?php if(isset($action) && substr($action,0,2)=='03' && $onuserperm_editprem=='1'){

	//取出某条项目

   $exaction=explode('&',$action);

   $onenewsid=substr($exaction[0],2);

   $strSQL="SELECT productinfo.*,productdir3.name,productdir3.lang,productdir3.fatherid FROM productinfo left join productdir3 on productinfo.id_proddir=productdir3.id_proddir WHERE id_prodinfo=$onenewsid";


   $objDB->Execute($strSQL);

   $oneproductinfo=$objDB->fields();  

   

   $strSQL="SELECT opicname,id_prodpic,type FROM productpic WHERE id_prodinfo=$onenewsid";

   $objDB->Execute($strSQL);

   $onenewspicinfo=$objDB->GetRows();



   //二级目录编辑抽取

  $strSQL="SELECT id_proddir,name FROM productdir3 WHERE fatherid=".$oneproductinfo['fatherid']." and dele='1' and level='2'";
  $objDB->Execute($strSQL);
  $arr2editdir=$objDB->GetRows();

	?>

<div id="lineout" style="position:relative">
 <!--<div style="position:absolute;right:70px;top:77px;"><img src=getqrcode.php?pid=<?=$oneproductinfo[id_prodinfo];?>&pdir2=<?=$oneproductinfo[id_proddir];?>&lang=<?=$oneproductinfo[lang];?>&ecc=L&size=4  /></div>-->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>

          <td height="36" align="left" background="../inc/pics/lanmubg.gif"><table width="200" border="0" cellspacing="0" cellpadding="0">

            <tr>

              <td width="32">&nbsp;</td>

              <td width="15"><img src="../inc/pics/lm_icon.gif" width="10" height="7"></td>

              <td width="153" class="txt_lanmu">编辑项目</td>

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

              <form action="product_manage.php?04<?php echo $oneproductinfo[id_prodinfo];?>&searchselect=<?php echo $searchselect;?>&keywords=<?php echo $keywords;?>" method="post" name="form" id="form"  onsubmit="return OnCheck(this);" >

              <table width="100%" border="0" cellpadding="4" cellspacing="0" class="txt">

                  <tr bgcolor="#FFFFFF">

                      <td width="91" valign="top" bgcolor="#FFFFFF">本地URL</td>

                      <td bgcolor="#FFFFFF"><?php //echo $siteurl;?>/case/case-<?php echo $oneproductinfo[id_prodinfo];?>.html</td>

                  </tr>
                  <tr bgcolor="#FFFFFF">

                    <td width="91" valign="top" bgcolor="#FFFFFF">项目名称</td>

                    <td bgcolor="#FFFFFF"><input name="newstitle" type="text" class="input_01" id="newstitle" style="width:500px" value="<?php echo $oneproductinfo[title];?>" /></td>

                    </tr>

                  <tr>
                      <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
                      <td valign="top" bgcolor="#FFFFFF">页面标题title</td>
                      <td bgcolor="#FFFFFF">
                          <input name="pagetitle" type="text" class="input_01" id="pagetitle" style="width:400px" value="<?php echo $oneproductinfo[pagetitle];?>" />
                          （SEO自定义页面标题title）
                  </tr>

                  <tr bgcolor="#FFFFFF">
                      <td valign="top" bgcolor="#FFFFFF">页面关健词Key</td>
                      <td bgcolor="#FFFFFF">
                          <input name="pagekey" type="text" class="input_01" id="keywords" style="width:400px" value="<?php echo $oneproductinfo[pagekey];?>" />
                          （SEO关健词全局设定），关健词用“,”分隔
                  </tr>

                  <tr bgcolor="#FFFFFF">
                      <td valign="top" bgcolor="#FFFFFF">页面标签Tag</td>
                      <td bgcolor="#FFFFFF">
                          <input name="pagetag" type="text" class="input_01" id="pagetag" style="width:400px" value="<?php echo $oneproductinfo[pagetag];?>" />
                          （SEO页面标签全局设定），关健词用“,”分隔
                      </td>
                  </tr>

                  <tr bgcolor="#FFFFFF">
                      <td valign="top" bgcolor="#FFFFFF">页面描述description</td>
                      <td bgcolor="#FFFFFF"  valign="top">
                          <textarea name="pagedesc" rows="5" class="input_01" id="intro" style="width:400px"><?php echo $oneproductinfo[pagedesc];?></textarea>
                          （SEO描述设定），页面描述
                      </td>
                  </tr>
                  <tr>
                      <td colspan="3" align="left" valign="middle" bgcolor="#EBF3F9"  style="padding:0; height:1px;"></td>
                  </tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top" bgcolor="#FFFFFF">项目类别</td>

                    <td bgcolor="#FFFFFF">
                    
                    
                    <div  id="productdirselectbox">
                    <? 
								if($oneproductinfo[dirtree]!=''){//输出目录树
								
								$dirtree=explode(',',$oneproductinfo[dirtree]);
							
								
								for($i=0;$i<sizeof($dirtree);$i++){
								
								   	//输出同级目录  
								$strSQL="SELECT id_proddir,name,fatherid FROM productdir3 WHERE  fatherid=(select fatherid from productdir3 where id_proddir='".$dirtree[$i]."') order by ordernum asc";
                                       $objDB->Execute($strSQL);
                                       $arrProductSamedir=$objDB->GetRows();
								
								?>                   
                                  <select  class="width-30"   id="C_dir<?=$i?>" name="C_dir<?=$i?>" data-SelectNUM="<?=$i?>" placeholder="项目类别"
                                   onChange="getsubdir('#C_dir<?=$i?>','#productdirselectbox');" >
                                      <option value="0" >项目类别</option>
                                   <?php for($j=0;$j<sizeof($arrProductSamedir);$j++){?>
                                      <option value="<?=$arrProductSamedir[$j][id_proddir]?>" <? if($dirtree[$i]==$arrProductSamedir[$j][id_proddir]){echo 'selected';}?>><?=$arrProductSamedir[$j][name]?></option>
                                    <?php }?>
                                  </select>
                                  
                                <? 
								}//end for
							}else{//没有目录树，初始一级目录
								  	//初始一级目录  
									$strSQL="SELECT id_proddir,name FROM productdir3 where  level='1' order by ordernum asc";
									$objDB->Execute($strSQL);
									$arrProductdir1=$objDB->GetRows();
                                  ?>                 
                                  <select  class="width-30"   id="C_dir0" name="C_dir0" data-SelectNUM="0" placeholder="项目类别"
                                   onChange="getsubdir('#C_dir0','#productdirselectbox');" >
                                      <option value="0" >项目类别</option>
                                   <?php for($i=0;$i<sizeof($arrProductdir1);$i++){?>
                                      <option value="<?=$arrProductdir1[$i][id_proddir]?>" ><?=$arrProductdir1[$i][name]?></option>
                                    <?php }?>
                                  </select>
                            
                             
                             <? }?>
                              <input type="hidden" style="display:none" id="selectNum" name="selectNum" value="<?=sizeof($dirtree)-1;?>" >  
                             </div>
                                        </tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top">项目简介</td>

                    <td ><textarea name="intro" id="intro" style="width:500px" rows="5"><?php echo $oneproductinfo[intro]; ?></textarea>                            </tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top" bgcolor="#FFFFFF">项目标签</td>

                    <td bgcolor="#FFFFFF"><textarea name="tag" id="tag" style="width:500px" rows="2"><?php echo $oneproductinfo[tag]; ?></textarea> </tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top" bgcolor="#FFFFFF">项目介绍</td>

                    <td bgcolor="#FFFFFF"><?php	echo $oFCKeditor->editor("newscontent",$oneproductinfo[content]);?></tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top" bgcolor="#FFFFFF"></td>

                    <td bgcolor="#FFFFFF"><!--<span onclick="needupfile(<?php echo $oneproductinfo[id_prodinfo];?>,'../../upload/product/','|jpg|jpeg|pdf|rar|doc|gif|png','/admin/product/ajax_upfileindata.php');" style="cursor:pointer">文件上传...</span>-->
                    
                       
                       
                       
                        <div id="uploadbarbox">
                        <style>
						#uploadbarbox{padding-bottom:15px;}
					    .uploadifive-button {
						float: left;
						margin-right: 10px;
						line-height:30px !important;
						cursor:pointer; 
						padding:0 5px;
						background: rgb(183,222,237); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(183,222,237,1) 0%, rgba(113,206,239,1) 50%, rgba(183,222,237,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(183,222,237,1)), color-stop(50%,rgba(113,206,239,1)), color-stop(100%,rgba(183,222,237,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(183,222,237,1) 0%,rgba(113,206,239,1) 50%,rgba(183,222,237,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(183,222,237,1) 0%,rgba(113,206,239,1) 50%,rgba(183,222,237,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(183,222,237,1) 0%,rgba(113,206,239,1) 50%,rgba(183,222,237,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(183,222,237,1) 0%,rgba(113,206,239,1) 50%,rgba(183,222,237,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b7deed', endColorstr='#b7deed',GradientType=0 ); /* IE6-9 */

					    
					    }
						
		
						#queue {
							border: 1px solid #E5E5E5;
							overflow: auto;
							margin-bottom: 10px;
							padding: 0 3px 3px;
							width: 100%;
						}
                    </style>
                          
                           <div id="queue"></div>
                           
                            <? $uniqueid=uniqid();?>
                           <input id="filevars" name="filevars" fileid="<?=$uniqueid;?>" pid="<?=$oneproductinfo[id_prodinfo];?>" talk="<?=md5('tokensay' . $uniqueid);?>" type="text" style="display:none;">
                        
                           <input id="file_upload" name="file_upload" type="file" multiple>
                           
                           <script>
                        
						$('#file_upload').uploadifive({
										'auto'             : true,
										'buttonClass'      : '',
										'buttonText'   : '上传文件',
										'width'        : '65',
										'fileSizeLimit' : '8MB',
										'formData'         : {
															   'timestamp' : $('#filevars').attr('fileid'),
															   'token'     : $('#filevars').attr('talk'),
															   'pid'       : $('#filevars').attr('pid')
															 },
										'queueID'          : 'queue',
										'uploadScript'     : 'doc_upload.php',
										'onQueueComplete' : function(uploads) {
											  window.location.reload();    
										}
										
						});
                        
                        </script>
                   
                          <div style="clear:both"></div>
                        </div>
                        
                        
                   

                                              <div id="pickuang">

<?php for($i=0;$i<sizeof($onenewspicinfo);$i++){

if($onenewspicinfo[$i][type]=="jpg" || $onenewspicinfo[$i][type]=="jpeg" || $onenewspicinfo[$i][type]=="gif" ||  $onenewspicinfo[$i][type]=="png"){

?>

<div class="box floatLeft"><a href="javascript:void(0)" onclick='$.wholepop.dialogClass ="style_1";poppic("<?php echo $siteurl;?>/upload/product/<?php echo $onenewspicinfo[$i][opicname];?>","图片预览及地址复制","<?php echo $onenewspicinfo[$i][id_prodpic];?>");'><img src="/upload/product/<?php echo $onenewspicinfo[$i][opicname];?>" width="50" height="50" border="0" /></a><span class="txt_underpic" onclick="delpic(<?php echo $onenewspicinfo[$i][id_prodpic];?>);" style="cursor:pointer">删除</span></div>

<? }else if($onenewspicinfo[$i][type]=="PDF"){?>

<div class="box floatLeft"><a href="javascript:void(0)" onclick='$.wholepop.dialogClass ="style_1";poppic("<?php echo $siteurl;?>/upload/product/<?php echo $onenewspicinfo[$i][opicname];?>","图片预览及地址复制");'><img src="/admin/inc/pics/pdf.gif" width="50" height="50" border="0" /></a><span class="txt_underpic" onclick="delpic(<?php echo $onenewspicinfo[$i][id_prodpic];?>);" style="cursor:pointer">删除</span></div>

<? }else if($onenewspicinfo[$i][type]=="DOC"){?>

<div class="box floatLeft"><a href="javascript:void(0)" onclick='$.wholepop.dialogClass ="style_1";poppic("<?php echo $siteurl;?>/upload/product/<?php echo $onenewspicinfo[$i][opicname];?>","图片预览及地址复制");'><img src="/admin/inc/pics/doc.gif" width="50" height="50" border="0" /></a><span class="txt_underpic" onclick="delpic(<?php echo $onenewspicinfo[$i][id_prodpic];?>);" style="cursor:pointer">删除</span></div>

<? }else if($onenewspicinfo[$i][type]=="RAR"){?>

<div class="box floatLeft"><a href="javascript:void(0)" onclick='$.wholepop.dialogClass ="style_1";poppic("<?php echo $siteurl;?>/upload/product/<?php echo $onenewspicinfo[$i][opicname];?>","图片预览及地址复制");'><img src="/admin/inc/pics/rar.gif" width="50" height="50" border="0" /></a><span class="txt_underpic" onclick="delpic(<?php echo $onenewspicinfo[$i][id_prodpic];?>);" style="cursor:pointer">删除</span></div>

<?php  }}?>

</div></tr>

                  <tr bgcolor="#FFFFFF">

                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>

                    <td bgcolor="#FFFFFF">

                    <input class="btn" type="submit" name="button_ok" id="button_ok" value="提交" />

                    <input class="btn" type="button" name="button_back2" id="button_back2" value="返回" onclick="javascript:location.href='product_manage.php?&searchselect=<?php echo $searchselect;?>&keywords=<?php echo $keywords;?>'" />                    </td>

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

    <?php }?>

          <table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>

          <td>&nbsp;</td>

        </tr>

      </table>

	  </td>



  </tr>

</table>


<script type="text/javascript">


 
 // 获取下级分类目录 并回填  $('#C_dir0').val()
//selectid 当前下拉列表的ID  callbackid 回填追加
//dirid:$(selectid).val() 当前下拉列表所选择的值
//selectNum:$(selectid).attr('data-SelectNUM') 下拉列表自定义属性值 0 1 2 3 表示第几级下拉列表
function getsubdir(selectid,callbackid){
	
	
 if($(selectid).val()!=0){
   $.post('./ajax_getsubdirselect.php',{dirid:$(selectid).val(),selectNum:$(selectid).attr('data-SelectNUM')},function(data) {
      var myjson = '';eval('myjson=' + data + ';');  
	  
	  var NextselectNum=myjson.SelectNum;//当前选择的下一个下拉值
	 
	  
	  if(myjson.Dirhtml!='0'){//存在下一级子分类
		  
		  if($("#C_dir"+NextselectNum).length>0){  //如果下一级下拉ID存在 则全部移除
			   for (var i=NextselectNum;i<100;i++){$("#C_dir"+i).remove();}
	       }
	      $(callbackid).append(myjson.Dirhtml);//回填下一级分类
		  $('#selectNum').val(NextselectNum);//赋值总分类数量
	  
	  }else{//没有下级分类
		  
		  if($("#C_dir"+NextselectNum).length>0){  //如果下一级下拉ID存在 则全部移除
			   for (var i=NextselectNum;i<100;i++){$("#C_dir"+i).remove();}
	       }
		   $('#selectNum').val(NextselectNum-1);//赋值总分类数量
		  
	  }
		
    });//end post
	
 }//end if 0
  
}


</script>

<?php if(isset($_GET[modify])){?>

<script type="text/javascript">

 popmessage('修改成功！', '友情提醒!');
 

</script>

<?php }?>



<?php require "../footer.php"; ?>

</body>

</html>



