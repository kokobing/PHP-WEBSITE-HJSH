<?php
require "../inc/cn_event_core.php";
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




        <div class="navibox">
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 圣鸿活动 > </div>
        </div>





        <?php require "../footer.php";?>
    </div>
    </body>
    <script src="/inc/js/custom.js"></script>


</html>