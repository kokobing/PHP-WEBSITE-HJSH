<?php
require "./inc/config.php";
require "./inc/function.class.php";
require "./inc/cn_header_core.php";

//我们的服务优势
$sql='select title,intro,url from layout WHERE id_layout = 1';
$advantage = $db->queryOne($sql);
$sql='select opicname as pic from layoutpic WHERE id_layout = 1  limit 1';
$advantagepic = $db->queryOne($sql);

//热门移民国家
$sql='select title,intro from layout WHERE id_layout = 2';
$hotcountry = $db->queryOne($sql);

$sql='select * from layoutpic WHERE id_layout = 2 order by ordernum asc limit 0,4';
$allcountry = $db->queryAll($sql);

//首页BANNER图
$sql='select opicname as pic,url from layoutpic WHERE id_layout = 3 order by ordernum asc limit 8';
$homebanner = $db->queryAll($sql);


//热门移民项目
$sql='select title,intro from layout WHERE id_layout = 4';
$casetitle = $db->queryOne($sql);

$sql='select * from layoutpic WHERE id_layout = 4 order by ordernum asc limit 0,4';
$allcase1 = $db->queryAll($sql);

//我们的团队
$sql='select * from layoutpic WHERE id_layout = 5 order by ordernum asc limit 8';
$teams = $db->queryAll($sql);

//经典案例
$sql='select id_newsinfo,title,intro,content,newsdate from newsinfo WHERE id_newsdir = 21 order by ordernum DESC limit 8';
$newsall= $db->queryAll($sql);

//头条图片新闻
$sql='select title,intro,url,opicname as pic,tag from layoutpic WHERE id_layout = 11 order by ordernum asc limit 1';
$topnewspic = $db->queryOne($sql);

//头条新闻
$sql='select title,id_newsinfo,newsdate from newsinfo WHERE tag like "%头条%" order by id_newsinfo desc limit 8';
$topnewsall = $db->queryAll($sql);

//活动
$sql='select id_newsinfo,title,intro,tag from newsinfo WHERE id_newsdir = 19 order by ordernum DESC limit 6';
$eventall= $db->queryAll($sql);



?>