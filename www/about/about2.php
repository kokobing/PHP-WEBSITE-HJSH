<?php
require "../inc/cn_about_core.php";
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
                  <?php foreach($homebanner as $value){?>
                    <li><img src="/upload/layout/<?php echo $value['pic'];?>" /></li>
                  <?php }?>
                </ul>
            </div>
              <div class="ws_bullets">
                  <div>
                    <?php foreach($homebanner as $k=>$value){?>
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
            <div class="navi"><i class="fa fa-home" aria-hidden="true"></i> <a href="/">首页</a> > 圣鸿活动 > 了解我们</div>
        </div>

        <div class="innerpage">
            <div class="content">

                <div class="title">魁北克投资移民</div>
                <div class="info">
                    <p>类别介绍<br>Category description</p>
                    <hr>
                    <p>加拿大魁省投资移民于2015年8月31日至2016年1月31日重启，全球配额仍为1,750个申请，来自中国（指中国大陆，含香港和澳门地区）的申请不能超过1,200个。安全可靠风险低，审核通过后才需要投资，且投资均有加拿大政府监管,4年当中居住3年可以加入公民；持有加国护照，可以免签自由出入加拿大、美国，各英联邦国家;德国、法国等所有欧共体国家。</p>

                    <p>签证类型：永久居民<br>
                    移民周期：24 - 36月<br>
                    手续复杂度：★★<br>
                    总费用预估：1,256,100元人民币起（以CAD/CNY=5.1换算）<br><br></p>


                    <p>移民要求<br>Immigration requirements</p>
                    <hr>
                    <p>1、家庭净资产：主申请人和配偶名下至少有160万加币；<br>
                    2、管理经历：申请前五年中两年以上高级商业管理经验（可以国营企业或机关）；<br>
                    3、学历要求：.主申请人48岁以下无学历要求；49岁必须高中毕业；50岁以上必须全日制大专以上学历；<br>
                    4、投资22万加币（一次性支付不返还）；<br>
                    5、随行子女要求：19周岁以下且未婚（以申请人提交全套文件后收到档案号时间为准）；<br>
                    6、申请人全家符合体检和安全背景调查要求且无犯罪记录。</p>

                    <p>移民流程<br>Immigration requirements</p>
                    <hr>
                </div>

            </div>
            <div class="right">
                   <div class="menu"><a href="#" class="act">了解我们</a></div>
                   <div class="menu"><a href="#">联系我们</a></div>
                   <div class="menu"><a href="#">移民评估定制</a></div>
                   <div class="menu"><a href="#" class="actother">热门移民项目</a></div>
                   <div class="caselist">
                       <div class="title">曼省创业移民</div>
                       <div class="intro">
                           1
                           资产要求:35万加元
                           只需满足最低35万加币资产要求即可申请的加拿大投资移民类别，创业资金仅需15万加币。
                           2
                           管理经验：3年
                           近5... </div>
                       <div class="more"><a href="#">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                   </div>
                <div class="caselist">
                    <div class="title">曼省创业移民</div>
                    <div class="intro">
                        1
                        资产要求:35万加元
                        只需满足最低35万加币资产要求即可申请的加拿大投资移民类别，创业资金仅需15万加币。
                        2
                        管理经验：3年
                        近5... </div>
                    <div class="more"><a href="#">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                </div>

                <div class="caselist">
                    <div class="title">曼省创业移民</div>
                    <div class="intro">
                        1
                        资产要求:35万加元
                        只需满足最低35万加币资产要求即可申请的加拿大投资移民类别，创业资金仅需15万加币。
                        2
                        管理经验：3年
                        近5... </div>
                    <div class="more"><a href="#">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                </div>

                <div class="caselist">
                    <div class="title">曼省创业移民</div>
                    <div class="intro">
                        1
                        资产要求:35万加元
                        只需满足最低35万加币资产要求即可申请的加拿大投资移民类别，创业资金仅需15万加币。
                        2
                        管理经验：3年
                        近5... </div>
                    <div class="more"><a href="#">更多 <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                </div>





            </div>
            <div style="clear:both"></div>
        </div>



        <section class="sec6">
            <div class="introbox">
                <div class="title">圣鸿移民</div>
                <div class="content">我们在澳洲、加拿大、新西兰、美国、新加坡和中国的香港、上海、北京、广州、
                    深圳、南京、苏州、无锡、常州等近20个城市均设有分支机构</div>
            </div>
            <img src="/upload/layout/<?php echo $adv['pic'];?>" alt="">
        </section>

        <section class="sec7">
            <div class="ind">
                <h1><?php echo $newsinfo['title'];?></h1>
                <p class="p1"><span><?php echo $newsinfo['intro'];?></span>
                    <button class="btn b1">
                        <</button>
                    <button class="btn b2">></button>
                </p>
                <div class="d2">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i12_18.png" alt="">
                                    <div class="title"> 南澳移民官与澳星领导亲切会晤！ </div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i9_19.png" alt="">
                                    <div class="title"> 快讯！03月01日澳技EOI官报发布</div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i10_19.png" alt="">
                                    <div class="title"> 在伦敦生活，你被“潜规则”了吗？</div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i12_18.png" alt="">
                                    <div class="title"> 南澳移民官与澳星领导亲切会晤！ </div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i9_19.png" alt="">
                                    <div class="title"> 快讯！03月01日澳技EOI官报发布</div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                                <div class="in din1 mousehover">
                                    <img src="/inc/pics/i10_19.png" alt="">
                                    <div class="title"> 在伦敦生活，你被“潜规则”了吗？</div>
                                    <div class="text">2月22日，澳星移民领导及移民律师与南澳移民局负责人进行了亲切的会面。澳星作为专业商业移民的权威机构，在全球拥有28家分公司，在澳洲移民业务领域可谓是遥遥领先。</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <?php require "../footer.php";?>
    </div>
    </body>
    <script src="/inc/js/custom.js"></script>


</html>