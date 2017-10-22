<?php  
require "../inc/config_admin.php";
if(isset($_SESSION[user_id])){//if usrer login



  
    $strSQL="DELETE FROM productdir3 WHERE  id_proddir='".$_REQUEST["id"]."'";
	$objDB->Execute($strSQL);
	
	
	$strSQL="DELETE FROM productdir3 WHERE   find_in_set('".$_REQUEST["id"]."',dirtree) ";
	$objDB->Execute($strSQL);
  
  
}
?>

