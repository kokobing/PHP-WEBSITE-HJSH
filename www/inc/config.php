<?php
session_start();
require_once("mysql.pdo.php");
require_once("dbinfo.php");
require_once("mobile_device_detect.php");
$device = new mobile_device_detect();

?>