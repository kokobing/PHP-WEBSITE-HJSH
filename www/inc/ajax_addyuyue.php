<?php
require "config.php";
require "function.class.php";


$etitle=$_POST['etitle'];
$eintro=$_POST['eintro'];
$name=$_POST['name'];
$mobi=$_POST['mobi'];

$content="<p>".$etitle."<br>".
    $eintro."<br>"."<hr>".
    "姓名：".$name."<br>".
    "电话：".$mobi."</p>";

$sql="INSERT INTO newsinfo(id_newsdir,title,content,newsdate) values('8','".$name."-预约报名','".$content."',now())";
$db->exec($sql);

$arr['errcode']="0";
$myjson= json_encode($arr);
echo $myjson;

?>