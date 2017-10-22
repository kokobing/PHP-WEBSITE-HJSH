<?php
require "../inc/cn_news_core.php";
?>
<!DOCTYPE html>
    <html>
    <head>
        <title><?php echo $pageinfo['pagetitle'];?></title>
        <meta name="keywords" content="<?php echo $pageinfo['pagekey'];?>" />
        <meta name="description" content="<?php echo $pageinfo['pagedesc'];?>" />
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

        <div class="spacebox"></div>

        <div class="navibox">
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 移民项目 > 新闻资讯</div>
        </div>



        <div class="innerpage">
            <div class="content">

                <div class="title" id="about"><?php echo $pageinfo['title'];?></div>
                <div class="info">
                       <?php echo $pageinfo['content'];?>
                </div>

            </div>
            <div class="right">


                <div class="menulist"><a href="#" class="actother"  title="<?php echo $pageinfo['pagetag'];?>">其他签证</a></div>

                <?php foreach($othercase as $value){?>
                    <div class="caselist">
                        <div class="title"><?php echo $value['title']?></div>
                        <div class="intro">
                            <?php echo $value['intro']?>... </div>
                        <div class="more"> <a href="/case/case-<?php echo $value['id_prodinfo'];?>.html" title="<?php echo $pageinfo['pagetag'];?>">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                    </div>
                <? }?>



                <div class="menulist"><a href="#" class="actother">最新新闻</a></div>
                <?php foreach($newsall as $value){?>
                    <div class="caselist">
                        <div class="title"><?php echo $value['title']?></div>
                        <div class="intro">
                            <?php echo $value['intro']?>... </div>
                        <div class="more"> <a href="/news/news-<?php echo $value['id_newsinfo'];?>.html" title="<?php echo $pageinfo['pagetag'];?>">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
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