<?php
require "config.php";
require "function.class.php";


$year=$_POST['year'];//年龄
$education=$_POST['education'];//学历
$ielts=$_POST['ielts'];//雅思
$work=$_POST['work'];//工龄
$assets=$_POST['assets'];//资产


$name=$_POST['name'];
$mobi=$_POST['mobi'];


if($year=='＜18岁'){$code1='c11';}
if($year=='18-34岁'){$code1='c12';}
if($year=='35-50岁'){$code1='c13';}
if($year=='>50岁'){$code1='c14';}

if($education=='＜高二'){$code2='c21';}
if($education=='高中、中专、技校'){$cod2='c22';}
if($education=='大专'){$code2='c23';}
if($education=='本科或以上'){$code2='c24';}

if($ielts=='＜4.5分'){$code3='c31';}
if($ielts=='4.5-6分'){$code3='c32';}
if($ielts=='≥4个6分'){$code3='c33';}

if($work=='＜1年'){$code4='c41';}
if($work=='1-3年'){$code4='c42';}
if($work=='> 3年以上'){$code4='c43';}

if($assets=='＜100万RMB'){$code5='c51';}
if($assets=='100万-1000万RMB'){$code5='c52';}
if($assets=='> 1000万以上RMB'){$code5='c53';}



if($code1=='c12' && $code2=='c21' && $code3=='c31' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c21' && $code3=='c32' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c21' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c21' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c31' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c32' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c22' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c31' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c32' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c23' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c31' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c32' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c41'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c42' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c42' && $code5=='c52'){
    $result='留学+工作+移民、萨省或BC省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c42' && $code5=='c53'){
    $result='留学+工作+移民、萨省或BC省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c43' && $code5=='c51'){
    $result='留学+工作+移民';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c43' && $code5=='c52'){
    $result='留学+工作+移民、萨省或BC省雇主担保';
}elseif($code1=='c12' && $code2=='c24' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='留学+工作+移民、萨省或BC省雇主担保、萨省或BC省企业家移民';
}elseif($code1=='c13' && $code2=='c21' && $code3=='c31' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c13' && $code2=='c21' && $code3=='c32' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c13' && $code2=='c21' && $code3=='c33' && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}elseif($code1=='c14'  && $code4=='c43' && $code5=='c53'){
    $result='萨省或BC省企业家移民';
}else{
    $result='无法办理';
}


$content="<p><br>".
    "年龄 : ". $year."<hr>".
    "学历 : ". $education."<hr>".
    "雅思 : ". $ielts."<hr>".
    "工作年龄 : ". $work."<hr>".
    "家庭资产 : ". $assets."<hr>".
    "姓名：".$name."<hr>".
    "电话：".$mobi."<hr></p>";

$sql="INSERT INTO newsinfo(id_newsdir,title,content,newsdate,indate,intro)
      values('13','".$name."-加拿大移民评估','".$content."',now(),now(),'".$result."')";
$db->exec($sql);

$arr['errcode']="0";
$arr['info']=$result;
$myjson= json_encode($arr);
echo $myjson;

?>