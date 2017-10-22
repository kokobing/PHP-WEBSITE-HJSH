<?php
require "../inc/cn_inner_core.php";

if($_GET[pageid]==''){$_GET[pageid]='1';}

$aboutinfo=getpagesetinfo($_GET[pageid],'id_pageset,title,content');

$aboutinfopic=getpagesetpic($aboutinfo[id_pageset],0);//取出版面对应id的第一张图片

$homepics=getlayoutpicnuminfo(1,10,'opicname');//简体背景图片和文字

$aboutbanner=getlayoutpicnuminfo(9,10,'opicname,url');//banner图
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>TCS</title>

<link  rel="stylesheet"  href="/inc/css-js/template.css"  type="text/css">
<link  rel="stylesheet"  href="/inc/css-js/none.css"  type="text/css">
<link  rel="stylesheet" href="../inc/css-js/style.css" type="text/css">
<link  rel="stylesheet"  href="/inc/css-js/responsive.css"  type="text/css">
<link  rel="stylesheet"  href="/inc/css-js/style-rtl-off.css"  type="text/css">
<link rel="stylesheet" href="../inc/css-js/flexslider.css" type="text/css" media="screen" />
<!-- JS FILES -->
<script src="../inc/css-js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/inc/css-js/responsive.js"></script>
<script type="text/javascript" src="/inc/css-js/uniform.js"></script>
<script type="text/javascript" src="/inc/css-js/script.js"></script>
<script type="text/javascript" src="/inc/css-js/jquery.cookie.js"></script>
<!--[if lt IE 9]><script src="/inc/css-js/html5.js"></script><![endif]-->
<!-- Slideshow background param -->
<script type="text/javascript">
var slideshowSpeed = 5000;
var slideEffect = "fade";
jQuery(document).ready(function($) {$('headerimgs').bgimgSlideshow({photos : [
		<?php for($i=0;$i<sizeof($homepics);$i++){?>

		{ 
			"image" : "/upload/layout/<?=$homepics[$i][opicname]?>",
		},
		<?php }?>
		]});});
		

</script>


</head>
<body>
<!-- Background slideshow divs-->
<div id="headerimgs">
  <div id="headerimg1" style="z-index:-1" class="headerimg"></div>
  <div id="headerimg2" style="z-index:1" class="headerimg"></div>
</div>

<!-- Slideshow controls -->
<div class="fade">
  <div id="control" class="btn"></div>
</div>
<div id="back" class="btn-back"></div>
<div id="next" class="btn-next"></div>
<a href="#" class="scrollToBottom"><div id="down" class="btn-down"></div></a>

<!-- end .Slideshow controls -->


<div id="wrap" class="clearfix">

   
   <?php require "../header-inner.php";?>

  
  <div id="bodyinner" class="body" style="border-top:6px solid #012255; opacity:1;">
  
  <div  style=" position: inherit;width:100%; height:300px; overflow:hidden">
    <div class="flexslider" style="height:300px;">
          <ul class="slides">
          <?php for($i=0;$i<sizeof($aboutbanner);$i++){?>
            <li><a href="<?=$aboutbanner[$i][url]?>"><img src="/upload/layout/<?=$aboutbanner[$i][opicname]?>" /></a></li>
          <?php }?>
          </ul>
        </div>
  
  </div>
  
   
  <div class="about_content">
      <div class="about_content_top" >
      <div class="inner_title">关于我们</div>
      <div class="about_topmenu">
          <div class="about_menulist">
          <ul>
            
              
               <?
            $strSQL = "SELECT * FROM pageset where intro like '%关于我们%' order by ordernum DESC" ;
            $objDB->Execute($strSQL);
			$arrpage=$objDB->GetRows();
		     for($i=0;$i<sizeof($arrpage);$i++){
		  ?>
              <li><a href="/about/about-<?=$arrpage[$i][id_pageset]?>.html" <?php if($_GET[pageid]==$arrpage[$i][id_pageset]){echo 'class="liactive"';}?>><?=$arrpage[$i][title]?></a></li>
 
           <? }?>
              
              
              
          </ul>
          </div>
      </div>
      </div>
      
      
      
  
      <div class="about_rightcontent">
              <div class="about_rightcontent_left">
              <h2><?=$aboutinfo[title]?></h2>
              <p><?=$aboutinfo[content]?></p>
              </div>
              <div class="about_rightcontent_right"><img src="/upload/layout/<?=$aboutinfopic?>"></div>
      </div>
       
  </div>
  
  <div style="clear:both"></div>
   <?php require "../footer-inner.php";?>
  
</div>

</div>

<script defer src="/inc/css-js/jquery.flexslider.js"></script>
<script type="text/javascript">
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
		controlNav: true, 
		directionNav: true,
        slideshow: false, 
        slideshowSpeed: 50000, 
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>


<script type="text/javascript" src="../inc/css-js/jquery.s2t.js"></script>

<script type="text/javascript">
   // convert simple to fanti if needed
   var bodyIsFt = $.cookie("bodyIsFt");
   

   if (bodyIsFt == "1") {
      $(document.body).s2t();
      $('#btn-s2t').text('中文简体');
   } else {
      $('#btn-s2t').text('中文繁體');
   }

   
   
   
   
</script>

</body>
</html>