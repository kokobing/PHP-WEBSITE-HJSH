<?php
error_reporting(0);
session_start();
ob_start();

//调用文件
require_once("db_mysql.class.php");//数据库
require_once(dirname(__FILE__).'/../../inc/dbinfo.php');
require "oem.php";

?>
