<?php  
require "../inc/config_admin.php";
if(isset($_SESSION[user_id])){//if usrer login


  
  $strSQL="update productdir3 set name='".$_REQUEST["dirname"]."',dirurl='".$_REQUEST["dirurl"]."'  where id_proddir='".$_REQUEST["id"]."'";
  $objDB->Execute($strSQL);//更改
  
  
  
}
?>

