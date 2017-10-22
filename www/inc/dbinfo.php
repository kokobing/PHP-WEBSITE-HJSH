<?php


//////////////////////网站后台使用/////////////////////////////
$db_hostname="localhost"; //服务器
$db_username="root"; //用户名
$db_password="123456"; //密码
$db_database="website"; //数据库
$db_port=3306; //port
$db_charset='utf8'; //port

/////////////////////////网站前端使用///////////////////////////////
$db_config = array(
    'host' => $db_hostname,
    'port' => $db_port,
    'username' => $db_username,
    'password' => $db_password,
    'dbname' => $db_database,
    'charset' => $db_charset
);
///////////////////////////////////////////////////////////

$server_type="win";//主机类型
$siteurl="http://www.hjshgroup.com/";//必设 后面涉及图片路径

?>