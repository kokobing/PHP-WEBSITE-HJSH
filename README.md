
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
 
 * 配置前台和后台数据库连接信息  
 	前台文件路径 /www/inc/config.php  
	后台文件路径 /www/admin/inc/config_admin.php 
 
 	$db_hostname="localhost"; //服务器  
	$db_username="root"; //用户名  
	$db_password="123456"; //密码  
	$db_database="website"; //数据库  
	
	后台文件路径 /www/admin/inc/config_admin.php中需指定测试域名的字符串，如下  
	$siteurl="http://www.website.com";

 * 安装盘：\AppServ\Apache2.2\conf\httpd.conf
 * apache 禁止访问目录,httpd.conf中找到如下行信息，去除Indexes  
	Options `Indexes` FollowSymLinks Includes ExecCGI ------- httpd.conf去除 Indexes   
	
 * httpd.conf中找到如下行，去掉#，开启VHOST虚拟主机 
	Include conf/extra/httpd-vhosts.conf    
   
运行设置
=========================== 
 
 *  安装盘：\AppServ\Apache2.2\conf\extra\httpd-vhosts.conf 设定虚拟主机信息,追加
 
	\<VirtualHost *:80\>  
		ServerAdmin webmaster@dummy-host2.x
		DocumentRoot "C:\AppServ\www\website\www"
		ServerName www.website.com
		ErrorLog "logs/dummy-host2.x-error.log"
		CustomLog "logs/dummy-host2.x-access.log" common
	\</VirtualHost\>  
	

 *  C:\Windows\System32\drivers\etc\hosts    域名重定向 追加下行  
    127.0.0.1       www.website.com

 *  重启APACHE后，在浏览器中运行 http://www.website.com
 *  后台地址： http://www.website.com/admin/   用户名:admin  密码:admin888 
****
	
|Author|Koko Lv|
|---|---
|E-mail|495105@qq.com

****

