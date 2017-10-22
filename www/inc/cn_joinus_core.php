<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";




//最新新闻
$sql='select title,intro from layout WHERE id_layout = 7';
$newsinfo = $db->queryOne($sql);

//版面内容
$sql='select intro,content from pageset WHERE id_pageset = 5';
$pageinfo = $db->queryOne($sql);

$sql='select opicname as pic from pagesetpic WHERE id_pageset =5 order by ordernum asc limit 4';
$pagebanner = $db->queryAll($sql);


//版面内容
$sql='select title,intro,content from pageset WHERE id_pageset = 2';
$pageinfo2 = $db->queryOne($sql);


//其他签证
$sql='select * from productinfo WHERE tag like "%热门移民项目%" order by ordernum desc limit 4';
$hotcase = $db->queryAll($sql);



//公司新闻
$sql='select id_newsinfo,title,intro,content from newsinfo WHERE id_newsdir = 2 order by ordernum DESC limit 6';
$newsall= $db->queryAll($sql);

?>