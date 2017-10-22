<?php
require "../inc/cn_eventcheck_core.php";
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
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 圣鸿活动 > </div>
        </div>


        <div class="innerpage">

            <div class="content">

                <h2 class="yuyue_h2">活动预约</h2>
                <hr>
              <div class="listevent">
                  <div class="etitle" id="etitle"><?php echo $event['title'];?></div>
                  <div style="clear:both"></div>
                  <div class="eintro" id="eintro"><?php echo $event['intro'];?></div>
                  <div style="clear:both"></div>

              </div>


                <div class="listevent">
                    <div class="etitle">姓名：<input type="text" name="name" id="name" class="cinput" value="" ></div>
                    <div style="clear:both"></div>
                    <div class="etitle">电话：<input type="text" name="mobi" id="mobi" class="cinput" value="" ></div>
                    <div class="ebutton"><a href="javascript:;" class="yuyue">预约</a></div>
                    <div style="clear:both"></div>
                </div>


                <div class="listevent">
                    <div class="econtent"><?php echo $event['content'];?></div>
                </div>



            </div>
            <div class="right">

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
    <script>
        $('.yuyue').click(function(){

            if($('#name').val()==''){alert('请填写您的姓名！');return false;}
            if($('#mobi').val()==''){alert('请填写您的电话！');return false;}

            var etitle=$('#etitle').text();
            var eintro=$('#eintro').text();
            var name=$('#name').val();
            var mobi=$('#mobi').val();

            $.post('/inc/ajax_addyuyue.php',{etitle:etitle,eintro:eintro,name:name,mobi:mobi},function(data){
                var myjson = '';eval('myjson=' + data + ';');
                if(myjson.errcode=='0'){
                    alert('预约成功！');
                    window.location.reload();
                }

            });


        });
    </script>


</html>