<?php
require "../inc/cn_joinus_core.php";
?>
<!DOCTYPE html>
    <html>
    <head>
        <title>圣鸿移民</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <meta name="viewport" content="width=device-width,user-scalable=no" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta id="meta">
        <link rel="stylesheet" href="/inc/css/plug.css" />
        <link rel="stylesheet" id="link">
        <link rel="stylesheet" media="screen and (max-width: 900px)" href="/inc/css/wi1000.css">
        <link rel="stylesheet" href="/inc/css/swiper-3.4.2.min.css">
        <link rel="stylesheet" type="text/css" href="/inc/js/wowslider-index/engine1/style.css" />
        <link rel="stylesheet" href="/inc/css/Font-Awesome/css/font-awesome.min.css">
        <script src="/inc/js/swiper-3.4.2.min.js"></script>
        <script src="/inc/js/jquery-2.2.0.min.js"></script>
    </head>

    <body>
    <div class="all">
        <?php require "../header.php";?>

        <div class="mainbanner">
            <!-- Start WOWSlider.com BODY section -->
            <div id="wowslider-container1" style="overflow: hidden">
                <div class="ws_images">
                    <ul>
                      <?php foreach($pagebanner as $value){?>
                        <li><img src="/upload/layout/<?php echo $value['pic'];?>" /></li>
                      <?php }?>
                    </ul>
                </div>
                  <div class="ws_bullets">
                      <div>
                        <?php foreach($pagebanner as $k=>$value){?>
                          <a href="#"><span><?php echo $k+1;?></span></a>
                        <?php }?>
                    </div>
                  </div>

                <div class="ws_shadow"></div>
            </div>
            <script type="text/javascript" src="/inc/js/wowslider-index/engine1/wowslider.js"></script>
            <script type="text/javascript" src="/inc/js/wowslider-index/engine1/script.js"></script>
            <!-- End WOWSlider.com BODY section -->
        </div>

        <div class="navibox">
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 英才招聘 > 加入我们</div>
        </div>

        <style>

            .list3Table { width:850px; margin:0 auto; margin-top:20px;height:auto;}
            .list3Table table { border-collapse:collapse; }
            .list3Table table tr th { line-height:38px;  text-align:left; padding:0 8px; text-align:center; background:#725533; color:#bd9c69; }
            .list3Table table tr th.last { border:none; }
            .list3Table table tr td { border:1px solid #bd9e67; padding:3px 8px; color:#333 }
            .list3Table table tr.evenBg td { background:#f6f7fb; }
            .list3Table table a, .list3Table table a:hover {  font-family:"微软雅黑"; }

            .list3Table table th.nameth {font-size:16px; width:40%; text-align:center; padding-left:8px; border-right:1px solid #bd9e67;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; }
            .list3Table table th.classth { font-size:16px;width:14%; border-right:1px solid #bd9e67;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; }
            .list3Table table th.numbth { font-size:16px;width:10%; border-right:1px solid #bd9e67; }
            .list3Table table th.locth { font-size:16px;width:22%; text-align:center; padding-left:8px; border-right:1px solid #bd9e67;overflow: hidden;text-overflow: ellipsis;white-space: nowrap; }
            .list3Table table th.timeth { font-size:16px;width:14%; text-align:center; padding-left:8px; }
        </style>

        <div class="innerpage">
            <div class="content">

                <div class="title" id="about" style="text-align: left">
                    <div style="font-size:18px;border-bottom:3px solid #deccb4"><i class="fa fa-users" aria-hidden="true"></i> 招聘职位</div>
                </div>
                <div class="info list3Table">

                    <?=$pageinfo['content']?>




                </div>


            </div>
            <div class="right">
                   <div class="menulist"><a href="javascript:;" onclick='$("html,body").animate( {scrollTop:$("#about").offset().top},"slow",function() {return false;});' class="act">了解我们</a></div>
                   <div class="menulist"><a href="javascript:;" onclick='$("html,body").animate( {scrollTop:$("#map").offset().top},"slow",function() {return false;});' >联系我们</a></div>
                   <div class="menulist"><a href="#">移民评估定制</a></div>
                   <div class="menulist"><a href="#" class="actother">热门移民项目</a></div>


                <?php foreach($hotcase as $value){?>
                    <div class="caselist">
                        <div class="title"><?php echo $value['title']?></div>
                        <div class="intro">
                            <?php echo $value['intro']?>... </div>
                        <div class="more"> <a href="/case/case-<?php echo $value['id_prodinfo'];?>.html">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                    </div>
                <? }?>





            </div>
            <div style="clear:both"></div>
        </div>



        <?php require "../footer.php";?>
    </div>
    </body>
    <script src="/inc/js/custom.js"></script>


</html>