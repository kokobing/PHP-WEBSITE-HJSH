<?php  
require "../inc/config_admin.php";
if(isset($_SESSION[user_id])){//if usrer login



  $dirtree=$_REQUEST["dirtree"];
  

  $strSQL="INSERT INTO productdir3(name,level,fatherid) VALUES('".$_REQUEST["dirname"]."','".$_REQUEST["dirlevel"]."','".$_REQUEST["fatherid"]."') ";
  $objDB->Execute($strSQL);//一级菜单名称入库
  
  $id = $objDB->getInsertID();//获取刚入库记录的ID
  $dirtree.=','.$id;
  
  $strSQL="update productdir3 set dirtree='".$dirtree."',ordernum='".$id."' where id_proddir='".$id."'";
  $objDB->Execute($strSQL);//更改入库记录的ORDER顺序
  
  
  
}
?>

