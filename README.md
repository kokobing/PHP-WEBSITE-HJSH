
README
===========================
PHP-WEBSITE-HJSH 一个完整的网站，包括前台后台，因为项目生命周期完结，整理到仓库中以做总结，代码仅供学习，禁止任何与商业有关的行为！
站点未用任何MVC框架，纯净版PHP程序。

运行环境
===========================
 * 集成环境 XAMPP xampp-win32-5.6.31-0-VC11-installer.exe
 * 下载地址：https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/5.6.31/

安装调试
===========================
 * 导入数据库SQL Phpmyadim中新建website数据库，并导入website.sql，注意新建数据库排序规则为utf8_general_ci  
 
 * 配置数据库连接信息 /www/inc/dbinfo.php
 
 	$db_hostname="localhost"; //服务器 /<br>
	$db_username="root"; //用户名/<br>
	$db_password="123456"; //密码/<br>
	$db_database="website"; //数据库/<br>
	$db_port=3306; //port/<br>
	$db_charset='utf8'; //port/<br>
	
 * apache 禁止访问目录  http.conf中找到如下行信息，去除Indexes 

   Options `Indexes` FollowSymLinks Includes ExecCGI ------- httpd.conf去除 Indexes 

 * php.ini 中报错提示找到error_reporting行信息，并追加  & ~E_NOTICE

   error_reporting=E_ALL & ~E_DEPRECATED & ~E_STRICT  `& ~E_NOTICE`  -----  追加 & ~E_NOTICE

 * php.ini 短标记 short_open_tag = On

	

****
	
|Author|Koko Lv|
|---|---
|E-mail|495105@qq.com

****
![](https://github.com/Kokolpb/PHP-WEBSITE-HJSH/blob/master/home.jpg)  
