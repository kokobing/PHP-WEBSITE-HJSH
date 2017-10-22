<?php
$c_filename = getcurrentfilename(); //获取当前文件名

//全局电话
$sql='select * from siteset WHERE id_siteset = 1';
$siteset = $db->queryOne($sql);


//全局页脚文字
$sql='select content,intro from layout WHERE id_layout = 8';
$footertxt = $db->queryOne($sql);

//微信图片
$sql='select content from layout WHERE id_layout = 9';
$weixinpic = $db->queryOne($sql);


//$flink
$sql='select intro from layout WHERE id_layout = 10';
$flink = $db->queryOne($sql);
?>