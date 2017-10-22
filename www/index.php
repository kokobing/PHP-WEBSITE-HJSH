<?php
require "./inc/cn_index_core.php";
?>
<!DOCTYPE html>
    <html>
    <head>
        <title>圣鸿移民</title>
        <meta name="keywords" content="圣鸿移民" />
        <meta name="description" content="圣鸿移民" />
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
        <script src="/inc/js/wowslider-index/engine1/jquery.js"></script>
        <script src="/inc/js/swiper-3.4.2.min.js"></script>
    </head>

    <body>
    <div class="all">
        <?php require "header.php";?>

       <div class="mainbanner">
        <!-- Start WOWSlider.com BODY sectionEnd WOWSlider.com BODY section -->
        <div id="wowslider-container1" style="overflow: hidden">
            <div class="ws_images">
                <ul>
                  <?php foreach($homebanner as $value){?>
                    <li><a href="<?php echo $value['url'];?>"><img src="/upload/layout/<?php echo $value['pic'];?>" title="" /></a></li>
                  <?php }?>
                </ul>
            </div>
              <div class="ws_bullets">
                  <div>
                    <?php foreach($homebanner as $k=>$value){?>
                      <a href="#" title="<?php echo $siteset['tag'];?>"><span><?php echo $k+1;?></span></a>
                    <?php }?>
                </div>
              </div>

            <div class="ws_shadow"></div>
        </div>
           <script type="text/javascript" src="/inc/js/wowslider-index/engine1/wowslider.js"></script>
           <script type="text/javascript" src="/inc/js/wowslider-index/engine1/script.js"></script>
      </div>



        <div class="newsbox">
            <div class="newslist">
                <div class="title">圣鸿移民头条 LAST NEWS</div>
                <div class="nleft">
                    <div class="nleftpic"><a href="<?php echo $topnewspic['url'];?>" title="<?php echo $siteset['tag'];?>"><img src="./upload/layout/<?php echo $topnewspic['pic'];?>" alt="<?php echo $siteset['tag'];?>" /></a></div>
                    <div class="nlefttitle">
                        <h3>
                            <span style="color: #ff0000;display:inline"><?php echo $topnewspic['tag'];?></span>
                            <a href="<?php echo $topnewspic['url'];?>" title="<?php echo $siteset['tag'];?>"> <?php echo $topnewspic['title'];?></a></h3>
                        <p> <a href="<?php echo $topnewspic['url'];?>" title="<?php echo $siteset['tag'];?>"><?php echo $topnewspic['intro'];?></a></p>
                        <span><a href="<?php echo $topnewspic['url'];?>" title="<?php echo $siteset['tag'];?>">[查看详情]</a></span>
                    </div>
                </div>

                <ul class="nleftlist">
                    <? foreach($topnewsall as $value){?>
                    <li>
                        <a href="/news/news-<?php echo $value['id_newsinfo'];?>.html" target="_blank" title="<?php echo $siteset['tag'];?>">● <?php echo $value['title'];?></a>
                       <span style="float:right;font-size:12px;"> <?php echo $value['newsdate'];?></span>
                    </li>
                    <? }?>
                </ul>
            </div>
            <div class="newslist">
                <div class="title" style="margin-bottom:10px;">活动预告 OUR EVENT </div>
                <? foreach($eventall as $k=> $value){?>
                <div class="event_indexbox">
                        <div class="event_ititle" >
                            <? if($k==0){?>
                                <span style="color: #ff0000">【<?php echo $value['tag'];?>】</span>
                             <? }?>

                            <a href="/event/event_check-<?php echo $value['id_newsinfo'];?>.html" title="<?php echo $siteset['tag'];?>"><?php echo $value['title'];?></a></div>
                        <div class="event_iintro" ><?php echo $value['intro'];?></div>
                    <? if($value['tag']!='往期'){?>
                        <div class="event_ibtn"><a href="/event/event_check-<?php echo $value['id_newsinfo'];?>.html" title="<?php echo $siteset['tag'];?>">预约</a></div>
                    <? }?>
                </div>
                <? }?>
            </div>
        </div>


        <!-- 热门移民国家-->
        <section class="sec2 other1" style="margin-top:20px;">


            <div class="othertitlebox">
                <div class="title">
                    <span class="tip"><i class="fa fa-star-half-o" aria-hidden="true"></i> <?php echo $hotcountry['title'];?></span>
                </div>

                <div style="clear:both"></div>
            </div>

            <div class="d1">
                <div class="swiper-container" id="swiper-wrapper">
                    <div class="swiper-wrapper" >
                        <? foreach(array_chunk($allcountry, 4) as $value){?>
                            <div class="swiper-slide">
                                <? foreach( $value as $v){
                                    //$tag=explode(',',$v['tag']);
                                    ?>
                                    <a href="<?php echo $v['url'];?>" title="<?php echo $siteset['tag'];?>">
                                        <div class="ind1 ind mousehover">
                                            <img src="/upload/layout/<?php echo $v['opicname'];?>" alt="<?php echo $siteset['tag'];?>">
                                            <span class="date"></span>
                                            <span class="title"><?php echo $v['title'];?></span>
                                            <span class="title" style="margin-top:0px;font-weight:normal">  适合人群：</span>
                                            <span class="text"><?php echo nl2br($v['intro']);?></span>
                                            <span class="btn3"> [查看详情]</span>
                                        </div>
                                    </a>
                                <?php }?>
                            </div>
                        <?php }?>
                    </div>
                </div>
            </div>
        </section>





        <!-- 我们的服务 -->
        <section class="sec3" style="background: url(/upload/layout/<?php echo $advantagepic['pic'];?>) no-repeat 0 100%;">
            <div class="inside">
                <div class="ind">
                    <p class="title"><?php echo $advantage['title'];?></p>
                    <p class="text"><?php echo $advantage['intro'];?></p>
                    <button class="btn"><a href="/about/server.html" title="<?php echo $siteset['tag'];?>">查看更多&nbsp;>></a></button>
                </div>
            </div>
        </section>



        <!-- 热门移民项目 -->
        <section class="sec2 other2">

            <div class="othertitlebox">
                <div class="title">
                    <span class="tip"><i class="fa fa-star-half-o" aria-hidden="true"></i> <?php echo $casetitle['title'];?></span> <span class="tip2"><?php echo $casetitle['intro'];?></span>
                </div>


                <div style="clear:both"></div>
            </div>

            <div class="d1">
                <div class="swiper-container" id="swiper-wrapper">
                    <div class="swiper-wrapper" >

                        <div class="swiper-slide">
                            <? foreach( $allcase1 as $v){  ?>
                                <a href="<?php echo $v['url'];?>" title="<?php echo $siteset['tag'];?>">
                                    <div class="ind1 ind mousehover">
                                        <img src="/upload/layout/<?php echo $v['opicname'];?>" alt="<?php echo $siteset['tag'];?>">
                                        <div class="btitle">
                                            <span class="contry c1"><?php echo $v['tag'];?></span>
                                            <span class="dec"><?php //echo date('M d,Y',strtotime($v['indate']));?></span>
                                        </div>


                                        <span class="title"> <?php echo $v['title'];?></span>
                                        <span class="title" style="margin-top:0px;font-weight:normal">  适合人群：</span>
                                        <span class="text"> <?php echo nl2br($v['intro']);?></span>

                                        <div class="next">
                                            [查看详情]
                                        </div>

                                    </div>
                                </a>
                            <?php }?>
                        </div>

                    </div>
                </div>
            </div>
        </section>




        <section class="sec7">
            <div class="ind">
                <h1><i class="fa fa-star-half-o" aria-hidden="true"></i> 经典案例 SAMPLE CASES</h1>
                <p class="p1">
                    <button class="btn b1"><</button>
                    <button class="btn b2">></button>
                </p>
                <div class="d2">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">

                            <? foreach(array_chunk($newsall, 4) as $value){?>
                                <div class="swiper-slide">
                                    <? foreach( $value as $v){
                                        $sql="select opicname as pic from newspic WHERE id_newsinfo = ".$v['id_newsinfo']." limit 1";
                                        $newspic = $db->queryOne($sql);
                                        ?>
                                        <div class="in din1 mousehover">
                                            <a href="	/news/news-<?php echo $v['id_newsinfo'];?>.html" title="<?php echo $siteset['tag'];?>">
                                                <img src="/upload/news/<?php echo $newspic['pic'];?>" alt="<?php echo $siteset['tag'];?>">
                                            <div class="title"> <?php echo $v['title'];?> </div>
                                            <div class="text">
                                                <span class="newsdate"></span>
                                                <span class="more">[查看详情]</span>
                                                <div style="clear:both;"></div>
                                            </div>
                                            </a>
                                        </div>
                                    <? }?>
                                </div>
                            <? }?>


                        </div>
                    </div>
                </div>
        </section>




        <section class="sec5">
            <div class="ind">
                <h1><i class="fa fa-star-half-o" aria-hidden="true"></i> 我们的团队 OUR TEAMS</h1>
                <p class="p1">
                    <button class="btn b1">
                        <</button>
                    <button class="btn b2">></button>
                </p>
                <div class="d2">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">

                            <? foreach(array_chunk($teams, 7) as $value){?>
                            <div class="swiper-slide">
                                <? foreach( $value as $v){?>
                                <div class="in din1">
                                    <img src="/upload/layout/<?php echo $v['opicname'];?>" alt="<?php echo $siteset['tag'];?>">
                                    <div class="title"><?php echo $v['title'];?></div>
                                    <div class="text"><?php echo $v['tag'];?></div>
                                </div>
                                <? }?>
                            </div>
                            <? }?>

                        </div>
                    </div>
                </div>
        </section>



        <?php require "footer.php";?>
    </div>
    </body>
    <script src="/inc/js/custom.js"></script>

    <script>



        window.onload = function() {


            var mySwiper5 = new Swiper('.sec5 .swiper-container', {

                loop: true,
                autoplayDisableOnInteraction: false,
                // 如果需要分页器
                pagination: '.swiper-pagination',

                // 如果需要前进后退按钮
                nextButton: '.sec5 .b2',
                prevButton: '.sec5 .b1',



            })
            var mySwiper7 = new Swiper('.sec7 .swiper-container', {

                loop: true,
                autoplayDisableOnInteraction: false,
                // 如果需要分页器
                pagination: '.swiper-pagination',
                autoplay: 3500,
                // 如果需要前进后退按钮
                nextButton: '.sec7 .b2',
                prevButton: '.sec7 .b1',



            })
        }
    </script>
</html>