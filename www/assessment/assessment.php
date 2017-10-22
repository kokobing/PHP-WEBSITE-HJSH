<?php
require "../inc/cn_assessment_core.php";
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

        <div class="spacebox"></div>

        <div class="navibox">
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 移民项目 > 新闻资讯</div>
        </div>
        <style>
            .innerpage .content{padding-top:0}
            .pg .title{
                text-align: left !important;
                color:#000 !important;
                padding: 10px 15px;
                background-color: #deccb4 !important;
                border-bottom: 1px solid transparent;
                border-top-left-radius: 3px;
                border-top-right-radius: 3px;
                font-size:16px !important;
            }
            .pg .content{
                margin-top:25px;background: #f7f7f7;
                padding-bottom:40px;
            }
            .infointroleft{
                float:left;
                width:15%;
                text-align: right;
                font-size: 16px;
                line-height: 40px;
                padding-right:20px;
            }
            .infointroright{float:left;width:60%;}
            .infointroright input[type=text]{
                width: 60%;
                border: 1px solid #D5D5D5;
                font-size:14px;
                padding:0 15px;
                font-family: inherit;
                line-height: inherit;
                box-sizing: border-box;
            }
            .infointro{margin-top:20px;}
            .infotitle{margin-left:8px;padding:5px;border-bottom:1px dashed #BE9F68;font-size:16px;}

            .infointroright input[type=radio]{
                font-size:14px;
            }
            .finishbtn{display:block;width:150px;margin:0 auto;color:#fff;padding:10px 20px;background:#271b1b }
            .pwrightmenu{float:right;position: relative;width:140px;}
            .pwrightmenu a{color:#000;float:right;}
            .pwmenu{position: absolute;left:0;top:35px;display:none;}
            .pwmenu a{display:block;}



        </style>

        <div class="innerpage caseinnerpage pg">
            <div class="content">

                <div class="title">
                    <strong><i class="fa fa-bar-chart" aria-hidden="true"></i> 加拿大移民评估系统 </strong>

                    <? if($device->detect()!='Desktop'){?>
                     <div class="pwrightmenu">
                         <a href="#">更多评估 <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                         <div class="pwmenu">
                             <a href="/assessment/assessment-australia.php">澳洲移民评估 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                             <a href="/assessment/assessment.html">加拿大移民评估 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                         </div>
                     </div>
                    <? }?>
                </div>
                <div class="info">


                    <div class="infotitle">选择移民评估条件 <i class="fa fa-exchange" aria-hidden="true"></i></div>
                    <div class="infointro">
                        <div class="infointroleft">年龄</div>
                        <div class="infointroright">
                            <input type="radio" value="＜18岁" name="year"> ＜18岁 &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="18-34岁" name="year"> 18-34岁&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="35-50岁" name="year"> 35-50岁&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value=">50岁" name="year"> >50岁&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>

                        <div style="clear: both"></div>
                    </div>
                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">学历 </div>
                        <div class="infointroright">
                            <input type="radio" value="＜高二" name="education"> ＜高二&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="高中、中专、技校" name="education"> 高中、中专、技校&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="大专" name="education"> 大专&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="本科或以上" name="education"> 本科或以上&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>

                        <div style="clear: both"></div>
                    </div>

                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">雅思 </div>
                        <div class="infointroright">
                            <input type="radio" value="＜4.5分" name="ielts"> ＜4.5分&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="4.5-6分" name="ielts"> 4.5-6分&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="≥4个6分" name="ielts"> ≥4个6分&nbsp;&nbsp;&nbsp;&nbsp;

                        </div>

                        <div style="clear: both"></div>
                    </div>


                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">工作年龄 </div>
                        <div class="infointroright">
                            <input type="radio" value="＜1年" name="work"> ＜1年&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="1-3年" name="work"> 1-3年&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="> 3年以上" name="work"> > 3年以上&nbsp;&nbsp;&nbsp;&nbsp;

                        </div>

                        <div style="clear: both"></div>
                    </div>


                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">家庭资产 </div>
                        <div class="infointroright">
                            <input type="radio" value="＜100万RMB" name="assets"> ＜100万RMB&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="100万-1000万RMB" name="assets"> 100万-1000万RMB&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" value="> 1000万以上RMB" name="assets"> > 1000万以上RMB&nbsp;&nbsp;&nbsp;&nbsp;

                        </div>

                        <div style="clear: both"></div>
                    </div>

                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">姓名*</div>
                        <div class="infointroright"><input type="text" name="name" id="name" placeholder=""></div>
                        <div style="clear: both"></div>
                    </div>
                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div class="infointroleft">联系电话*</div>
                        <div class="infointroright"><input type="text" name="mobi" id="mobi" placeholder=""></div>
                        <div style="clear: both"></div>
                    </div>


                    <div class="infotitle"></div>
                    <div class="infointro">
                        <div style="text-align:center "><a href="javascript:;" class="finishbtn" id="btnpg">提交查看评估</a></div>
                    </div>

                </div>

            </div>
            <div class="right" style="margin-top:25px;">

                <div class="menulist"><a href="/assessment/assessment.html" class="actother"><i class="fa fa-long-arrow-right" aria-hidden="true"></i> 加拿大移民评估</a></div>
                <div class="menulist"><a href="/assessment/assessment-australia.php" class="actother">澳洲移民评估</a></div>

            </div>
            <div style="clear:both"></div>
        </div>



        <?php require "../footer.php";?>
    </div>


    <div class="popbox">
        <div class="popboxinner">
         <p class="title">
             非常抱歉，根据测试，您的分数未达到办理条件。
         </p>
        <p class="intro">
             希望了解如何提升自身实力移民加拿大
          </p>
        <p class="tel">
             您可拨打<span>400-778-5053</span>做进一步咨询

         </p>
        <p class="btn">
            <a href="#" class="closepop">关闭</a>
        </p>
        </div>
    </div>

    </body>
    <script src="/inc/js/custom.js"></script>
    <script>

        $('.closepop').click(function(){
               $(".popbox").hide();
               window.location.reload();
        });

        $('.pwrightmenu a').click(function(){
            $(".pwmenu").show();
        });


        $('#btnpg').click(function(){


            if($("input[name='year']:checked").val()=='＜18岁'){
                $(".popboxinner .title").text('非常抱歉，您的年龄小于18岁，无法评估！');
                $(".popbox").show();
                return false;
            }
            if($('#name').val()==''){alert('请填写您的姓名！');return false;}
            if($('#mobi').val()==''){alert('请填写您的电话！');return false;}

            var year=$("input[name='year']:checked").val();
            var education=$("input[name='education']:checked").val();
            var ielts=$("input[name='ielts']:checked").val();
            var work=$("input[name='work']:checked").val();
            var assets=$("input[name='assets']:checked").val();
            var name=$('#name').val();
            var mobi=$('#mobi').val();



            $.post('/inc/ajax_canada.php',{year:year,education:education,ielts:ielts,work:work,assets:assets,name:name,mobi:mobi},function(data){
                var myjson = '';eval('myjson=' + data + ';');
                if(myjson.errcode=='0'){
                    if(myjson.info=='无法办理'){
                        $(".popboxinner .title").text('非常抱歉，根据测试，您的分数未达到办理条件。');
                        $(".popbox").show();
                    }else{
                        $(".popboxinner .title").text('恭喜您，根据测试结果，你可以办理');
                        $(".popboxinner .intro").text(myjson.info+' 项目');
                        $(".popbox").show();
                    }

                }

            });


        });
    </script>

</html>