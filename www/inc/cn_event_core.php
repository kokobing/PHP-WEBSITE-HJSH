<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";



//版面内容
$sql='select * from pageset WHERE id_pageset = 3';
$pageinfo = $db->queryOne($sql);


$sql='select opicname as pic from pagesetpic WHERE id_pageset = 3 order by ordernum asc limit 4';
$pagebanner = $db->queryAll($sql);

//其他签证
$sql='select * from productinfo WHERE tag like "%热门移民项目%" order by ordernum desc limit 4';
$hotcase = $db->queryAll($sql);


//活动
$sql='select id_newsinfo,title,intro,content from newsinfo WHERE id_newsdir = 19 order by ordernum DESC limit 6';
$newsall= $db->queryAll($sql);

?>