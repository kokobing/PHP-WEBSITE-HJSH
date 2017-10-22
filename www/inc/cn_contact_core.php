<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";



//版面内容
$sql='select intro,content from pageset WHERE id_pageset = 2';
$pageinfo = $db->queryOne($sql);


?>