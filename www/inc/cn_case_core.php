<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";

if($_GET['id'] == ''){
    $pageid ='1';
}else{
    $pageid = $_GET['id'];
}

//版面内容
$sql='select * from productinfo WHERE id_prodinfo ='.$pageid;
$pageinfo = $db->queryOne($sql);

//公司新闻
$sql='select id_newsinfo,title,intro,content from newsinfo WHERE id_newsdir = 2 order by ordernum DESC limit 3';
$newsall= $db->queryAll($sql);

//其他签证
$sql='select * from productinfo WHERE tag like "%其他签证%" order by ordernum desc limit 3';
$othercase = $db->queryAll($sql);


?>