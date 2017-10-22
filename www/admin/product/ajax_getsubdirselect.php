<?php 

/*

ajax_getsubdirselect.php   获取 下级分类 并组装成字符串 回填到指定的ID HTML里*/

 
require "../inc/config_admin.php";
if(isset($_SESSION[user_id])){//if usrer login

     $arr['SelectNum']=$_POST[selectNum]+1;//$_POST[selectNum] 下一级下拉列表的值
	
	   $strSQL="SELECT id_proddir,name FROM productdir3 where fatherid='".$_POST[dirid]."'  order by ordernum asc";
       $objDB->Execute($strSQL);
       $arrproductdirlIST=$objDB->GetRows();
	   
	   
	   if(sizeof($arrproductdirlIST)!=0){
		   
	         $str.=' <select  class="width-30"  id="C_dir'.$arr['SelectNum'].'" name="C_dir'.$arr['SelectNum'].'" data-SelectNUM="'.$arr['SelectNum'].'" placeholder="信息类别" onChange="getsubdir(\'#C_dir'.$arr['SelectNum'].'\',\'#productdirselectbox\');" >';
             $str.=' <option value="0" >信息类别</option>';
	   
          for($i=0;$i<sizeof($arrproductdirlIST);$i++){
                 $str.='<option value="'.$arrproductdirlIST[$i][id_proddir].'" >'.$arrproductdirlIST[$i][name].'</option>';
                }
                  $str.=' </select>';
				  
	            $arr['Dirhtml']=$str;
     
	   }else{
		   
		        $arr['Dirhtml']='0';
	   }
	 
	  
	$myjson= json_encode($arr);
	echo $myjson;


}







?>

