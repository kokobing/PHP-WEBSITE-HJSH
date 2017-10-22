<?php

require "../inc/config_admin.php";




//文件上传 只支持DOC DOCX XLS XLSX PPT PPTX PDF JPG PNG GIF TXT
function upload_files($uploadfile,$savepath,$file_name,$limitsize){
	$upload_file=$_FILES[$uploadfile]['tmp_name'];
	$upload_file_name=$_FILES[$uploadfile]['name'];
	$upload_file_size=$_FILES[$uploadfile]['size'];
	if($upload_file_name==null){return null;};
	$name=$file_name;
	$typeA=explode(".",basename($upload_file_name));
	$type=".".strtolower($typeA[count($typeA)-1]);
	
	if($upload_file_size>$limitsize*1024*1024){
       return 'size_error';//文件上传尺寸限制
	}
	
	//if(!strpos('|.doc|.docx|.xls|.xlsx|.ppt|.pptx|.pdf|.png|.jpg|.gif|.txt|.rar',$type)){
	if(!strpos('|.png|.jpg|.gif',$type)){
       return 'type_error';//文件类型不正确
	}
		
	if(!move_uploaded_file($upload_file,$savepath.$name.$type)){
       return 'upload_error';//文件上传失败，重试
	}
	
	return $name.$type;
}



$verifyToken = md5('tokensay'.$_POST['timestamp']);//令牌校验

if( isset($_SESSION[user_id]) && !empty($_FILES) && $_POST['token'] == $verifyToken ){// 只有登陆用户 上传不为空 

   
   $filename='Filedata';//html表单上传的文件控件名
   $limitsize=$_POST[limitsize];//上传的文件限制几M以内
   
   $updir="../../upload/product/";//上传路径


   $file_oldname=$_FILES[$filename]['name'];//文件原始名称
   $file_newname=uniqid();//为新文件命名

	
   $image_file=upload_files($filename,$updir,$file_newname,'10');//上传图片
   		 

   if($image_file=='size_error'){

	     echo "文件上传尺寸不大于50M!";
		 
	}elseif($image_file=='type_error'){

	    echo "该文件类型不允许上传,只支持 JPG PNG GIF 类型的文件";
	
	}elseif($image_file=='upload_error'){

	     echo "文件上传失败，请重试";
	
	}else{


       $filetype=end(explode(".",$image_file));  
      

  //文件名入库
	     $strSQL="INSERT INTO productpic(id_prodinfo,opicname,id_hr,type) values ('".$_POST['pid']."','".$image_file."','".$_SESSION[user_id]."','$filetype')";
		 $objDB->Execute($strSQL);
		 
		
		 echo 1; 
	}
	



}


?>