<?php
require "config.php";
require "function.class.php";


$year=$_POST['year'];//年龄
$education=$_POST['education'];//学历
$ielts=$_POST['ielts'];//雅思
$work=$_POST['work'];//工龄
$assets=$_POST['assets'];//资产
$company=$_POST['company'];//公司资产
$shareholdings=$_POST['shareholdings'];//持有股份

$name=$_POST['name'];
$mobi=$_POST['mobi'];

$code1=0;
if($year=='<18岁'){$code1=11;}
if($year=='18-50岁'){$code1=12;}
if($year=='50-55岁'){$code1=13;}
if($year=='>55岁'){$code1=14;}


$code2=0;
if($education=='无'){$code2=21;}
if($education=='中技或高中'){$cod2=22;}
if($education=='大专'){$code2=23;}
if($education=='本科'){$code2=24;}


$code3=0;
if($ielts=='<4个6分'){$code3=31;}
if($ielts=='>4个6分'){$code3=32;}


$code4=0;
if($work=='<1年'){$code4=41;}
if($work=='1-3年'){$code4=42;}
if($work=='≥3年'){$code4=43;}

$code5=0;
if($shareholdings=='持股不足30%，或者不足2年'){$code5=51;}
if($shareholdings=='≥30%，且满足持股2年以上，价值＜200万RMB'){$code5=52;}
if($shareholdings=='≥30%，且足持股2年以上，价值≥200万RMB'){$code5=53;}

$code6=0;
if($company=='<250万RMB'){$code6=61;}
if($company=='250-1500RMB'){$code6=62;}
if($company=='≥1500万RMB'){$code6=63;}

$code7=0;
if($assets=='<400万RMB'){$code7=71;}
if($assets=='400-800万RMB'){$code7=72;}
if($assets=='800-3000万RMB'){$code7=73;}
if($assets=='≥3000万RMB'){$code7=74;}



////取出所有规则
//$sql='select * from australia ';
//$gzall= $db->queryAll($sql);
//
//
//$result='无法办理';
//foreach($gzall as $value){
//    if($code1==$value['year'] && $code2==$value['education'] && $code3==$value['ielts'] && $code4==$value['work'] && $code5==$value['shareholdings'] && $code6==$value['company'] && $code7==$value['assets']){
//        $result=$value['result'];
//    }
//}

if($code1==12 && $code2==21 && $code3==31 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==21 && $code3==31 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==21 && $code3==32 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==22 && $code3==31 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==22 && $code3==32 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==23 && $code3==31 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==41 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==51 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==51 && $code7==72){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==51 && $code7==73){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==51 && $code7==74){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && $code7==72){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && $code7==73){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && $code7==74){
    $result='187、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && ($code6==62 || $code6==63) && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='187、188A、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && $code7==72){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && $code7==73){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && $code7==74){
    $result='187、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && ($code6==62 || $code6==63) && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && ($code6==62 || $code6==63) && $code7==72){
    $result='187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==62  && $code7==73){
    $result='187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==62  && $code7==74){
    $result='187、188A、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==63  && $code7==73){
    $result='187、188A、132';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==42 && $code5==53 && $code6==63  && $code7==74){
    $result='187、188A、188C、132';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==51 && ($code7==71 || $code7==72 || $code7==73)){
    $result='186、187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==51 && $code7==74){
    $result='186、187、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && ($code5==52 || $code5==53) && $code6==61 && ($code7==71 || $code7==72 || $code7==73)){
    $result='186、187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && ($code5==52 || $code5==53) && $code6==61 && $code7==74){
    $result='186、187、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==71){
    $result='186、187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='186、187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='186、187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='186、187、188A、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==71){
    $result='186、187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==72){
    $result='186、187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==73){
    $result='186、187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==74){
    $result='186、187、188A、188C';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==71){
    $result='186、187';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==72){
    $result='186、187、188A';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==73){
    $result='186、187、188A、132';
}elseif($code1==12 && $code2==23 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==74){
    $result='186、187、188A、188C、132';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==62 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==62 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==62 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==12 && $code2==24 && $code3==31 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、188C、132';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==41 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==51 && ($code7==71 || $code7==72 || $code7==73)){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==51 && $code7==74){
    $result='187、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && ($code7==71 || $code7==72 || $code7==73)){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==62 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==62 && $code7==72){
    $result='187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==62 && $code7==73){
    $result='187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==62 && $code7==74){
    $result='187、188A、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==63 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==63 && $code7==73){
    $result='188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==52 && $code6==63 && $code7==74){
    $result='188A、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && ($code7==71 || $code7==72 || $code7==73)){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==62 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==62 && $code7==72){
    $result='187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==62 && $code7==73){
    $result='187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==62 && $code7==74){
    $result='187、188A、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==63 && $code7==71){
    $result='187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==63 && $code7==72){
    $result='187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==63 && $code7==73){
    $result='187、188A、132';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==42 && $code5==53 && $code6==63 && $code7==74){
    $result='187、188A、188C、132';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==51 && ($code7==71 || $code7==72 || $code7==73)){
    $result='186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==51 && $code7==74){
    $result='186、187、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && $code6==61 && ($code7==71 || $code7==72 || $code7==73)){
    $result='186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && $code6==61 && $code7==74){
    $result='186、187、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==71){
    $result='186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='186、187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='186、187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='186、187、188A、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==61 && ($code7==71 || $code7==72 || $code7==73)){
    $result='186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==61 && $code7==74){
    $result='186、187、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==71){
    $result='186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==72){
    $result='186、187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==73){
    $result='186、187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==62 && $code7==74){
    $result='186、187、188A、188C';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==71){
    $result='457、457转186、186、187';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==72){
    $result='457、457转186、186、187、188A';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==73){
    $result='457、457转186、186、187、188A、132';
}elseif($code1==12 && $code2==24 && $code3==32 && $code4==43 && $code5==53 && $code6==63 && $code7==74){
    $result='457、457转186、186、187、188A、188C、132';
}elseif($code1==14 && $code5==51 && $code7==74){
    $result='188C';
}elseif($code1==14 && $code5==52 && $code6==61 && $code7==74){
    $result='188C';
}elseif($code1==14 && $code5==52 && ($code6==62 || $code6==63) && $code7==72){
    $result='188A';
}elseif($code1==14 && $code5==52 && ($code6==62 || $code6==63) && $code7==73){
    $result='188A';
}elseif($code1==14 && $code5==52 && ($code6==62 || $code6==63) && $code7==74){
    $result='188A、188C';
}elseif($code1==14 && $code5==53 && ($code6==61 || $code6==62) && $code7==72){
    $result='188A';
}elseif($code1==14 && $code5==53 && ($code6==61 || $code6==62) && $code7==73){
    $result='188A';
}elseif($code1==14 && $code5==53 && ($code6==61 || $code6==62) && $code7==74){
    $result='188A、188C';
}elseif($code1==14 && $code5==53 && $code6==63 && $code7==72){
    $result='188A';
}elseif($code1==14 && $code5==53 && $code6==63 && $code7==73){
    $result='188A、132';
}elseif($code1==14 && $code5==53 && $code6==63 && $code7==74){
    $result='188A、132、188C';
}elseif($code1==14 && $code7==74){
    $result='188C';
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
      values('13','".$name."-澳洲移民评估','".$content."',now(),now(),'".$result."')";
$db->exec($sql);

$arr['errcode']="0";
$arr['info']=$result;
$myjson= json_encode($arr);
echo $myjson;

?>