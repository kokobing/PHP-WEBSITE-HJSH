<?php

$objDB=new mysql($db_hostname,$db_username,$db_password,$db_database);
mysql_query("SET NAMES utf8"); 
mysql_query("set sql_mode=''"); 
//系统图片路径


$companytitle="::上海腾岩信息科技有限公司 信息管理系统::";
$logo_text="Management Website ".date("Y")." 智能网站管理平台";

$indexlogin_top='智能网站';
$indexlogin_top1='Management Website '.date("Y");
$indexlogin_top2='智能网站管理平台';
$indexlogin_bottom='上海腾岩信息科技有限公司 信息管理系统商业授权版';

$footerleft="Powered by Website  Management 2013 © 2008-".date("Y").", SHANGHAI TECHNOLOG CO,.LTD";
$footerright='<a href="http://www.ty-sh.com" target="_blank" class="link_edit">上海腾岩信息科技有限公司</a> 商业授权';

$logo_pic="";
?>
