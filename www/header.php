<? if($device->detect()=='Desktop'){?>
<script src="/inc/js/custom-desktop.js"></script>
<? }else{?>
<link rel="stylesheet" href="/inc/css/wi1000.css">
<? }?>
<header class="top toptop">
    <div class="nav">
        <a href="javascript:;" class="na weixinboxact">微信公众号
          <div class="weixinbox"> <?php echo $weixinpic['content'];?></div>
        </a><span class="line"></span>
        <a href="/about/about.html" class="na">关于圣鸿</a><span class="line"></span>
        <a href="/about/contact.html" class="na">联系我们</a>
        <? if($device->detect()!='Desktop'){?>
            <span class="line"></span><a href="/assessment/assessment.html"  class="na" style="color: #ff0000">免费评估</a>
        <? }?>
    </div>
    <img src="/inc/pics/i12_02.png" alt="" class="gobalpic">
</header>

<div class="top2top">
<header class="top2">
    <div class="d1">
        <a href="/"><img src="/inc/pics/logo.png" alt="" width="200"></a>

    </div>
    <div class="d2">


        <div class="d22">
            <img src="/inc/pics/icon2_03.png" alt="" class="littleLogo">
            <div class="text">
                <span class="t1"><?php echo $siteset['smailbox'];?></span>
                <span class="t2">7*24小时服务热线</span>
            </div>
        </div>
        <span class="line"></span>
        <div class="d21">
            <img src="/inc/pics/icon1_03.png" alt="" class="littleLogo">
            <div class="text">
                <a href="/assessment/assessment.html"><span class="t1">移民评估</span>  </a>
                <a href="/assessment/assessment.html"><span class="t2">合理建议全面规划</span></a>

            </div>
        </div>


    </div>
</header>
</div>

<div class="mainmenutop">
    <div class="mainmenuwrap">
        <nav>
            <div class="sb"> <a href="/"  class="na">网站首页 <i class="fa fa-home" aria-hidden="true"></i></a></div>

            <div class="sb">
                <a href="javascript:;" class="na" style="cursor: default;">移民项目 <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                <ul>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 澳洲移民<div class="sba-arrow">》</div></a>

                        <div class='subbox boxfirst'>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-bars" aria-hidden="true"></i> 雇主担保</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 18 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                                <div style="clear:both"></div>
                            </div>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-jpy" aria-hidden="true"></i> 投资移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 19 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>

                        </div>

                    </li>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 美国移民<div class="sba-arrow">》</div></a>

                        <div class='subbox'>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-university" aria-hidden="true"></i> 美国移民分类目录</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 22 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>

                        </div>

                    </li>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 加拿大移民<div class="sba-arrow">》</div></a>
                        <div class='subbox'>
                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-magic" aria-hidden="true"></i> 雇主担保移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 26 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-jpy" aria-hidden="true"></i> 投资移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 27 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-graduation-cap" aria-hidden="true"></i> 留学移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 96 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                    </li>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 欧洲移民<div class="sba-arrow">》</div></a>

                        <div class='subbox'>

                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-eur" aria-hidden="true"></i> 德国移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 33 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-eur" aria-hidden="true"></i> 马耳他移民</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 34 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $ym[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                    </li>



                </ul>
            </div>
            <div class="sb">
                <a href="javascript:;" class="na" style="cursor: default;">签证项目 <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                <ul>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 留学签证<div class="sba-arrow">》</div></a>

                        <div class='subbox boxfirst'>

                            <div class="subsub"  style="width:70px;">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-graduation-cap" aria-hidden="true"></i> 欧洲</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 106 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $caselistmenu[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>

                            <div class="subsub"  style="width:70px;">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-graduation-cap" aria-hidden="true"></i> 美洲</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 108 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $caselistmenu[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>

                            <div class="subsub"  style="width:70px;">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-graduation-cap" aria-hidden="true"></i> 亚洲</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 111 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $caselistmenu[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>

                            <div class="subsub"  style="width:70px;">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-graduation-cap" aria-hidden="true"></i> 大洋洲</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 113 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $caselistmenu[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>


                            <div style="clear:both"></div>
                        </div>

                    </li>
<!--                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 旅游签证<div class="sba-arrow">》</div></a>-->
<!--                        <div class='subbox'>-->
<!---->
<!--                            <div class="subsub" style="width:70px;">-->
<!--                                <a href="javascript:;" class="subsubmain"><i class="fa fa-rocket" aria-hidden="true"></i> 欧洲</a>-->
<!--                                --><?php
//                                $sql='select name,dirurl from productdir3 WHERE fatherid = 75 order by ordernum asc';
//                                $subdir = $db->queryAll($sql);
//                                foreach($subdir as $value){
//                                    $caselistmenu[]=$value;
//                                    ?>
<!--                                    <a href="--><?php //echo  $value['dirurl'];?><!--" class="subsubmain">--><?php //echo  $value['name'];?><!--</a>-->
<!--                                --><?// }?>
<!--                            </div>-->
<!---->
<!--                            <div class="subsub" style="width:70px;">-->
<!--                                <a href="javascript:;" class="subsubmain"><i class="fa fa-car" aria-hidden="true"></i> 美洲</a>-->
<!--                                --><?php
//                                $sql='select name,dirurl from productdir3 WHERE fatherid = 76 order by ordernum asc';
//                                $subdir = $db->queryAll($sql);
//                                foreach($subdir as $value){
//                                    $caselistmenu[]=$value;
//                                    ?>
<!--                                    <a href="--><?php //echo  $value['dirurl'];?><!--" class="subsubmain">--><?php //echo  $value['name'];?><!--</a>-->
<!--                                --><?// }?>
<!--                            </div>-->
<!---->
<!--                            <div class="subsub" style="width:70px;">-->
<!--                                <a href="javascript:;" class="subsubmain"><i class="fa fa-ship" aria-hidden="true"></i> 亚洲</a>-->
<!--                                --><?php
//                                $sql='select name,dirurl from productdir3 WHERE fatherid = 77 order by ordernum asc';
//                                $subdir = $db->queryAll($sql);
//                                foreach($subdir as $value){
//                                    $caselistmenu[]=$value;
//                                    ?>
<!--                                    <a href="--><?php //echo  $value['dirurl'];?><!--" class="subsubmain">--><?php //echo  $value['name'];?><!--</a>-->
<!--                                --><?// }?>
<!--                            </div>-->
<!---->
<!--                            <div class="subsub" style="width:70px;">-->
<!--                                <a href="javascript:;" class="subsubmain"><i class="fa fa-subway" aria-hidden="true"></i> 大洋洲</a>-->
<!--                                --><?php
//                                $sql='select name,dirurl from productdir3 WHERE fatherid = 78 order by ordernum asc';
//                                $subdir = $db->queryAll($sql);
//                                foreach($subdir as $value){
//                                    $caselistmenu[]=$value;
//                                    ?>
<!--                                    <a href="--><?php //echo  $value['dirurl'];?><!--" class="subsubmain">--><?php //echo  $value['name'];?><!--</a>-->
<!--                                --><?// }?>
<!--                            </div>-->
<!---->
<!--                            <div class="subsub" style="width:70px;">-->
<!--                                <a href="javascript:;" class="subsubmain"><i class="fa fa-motorcycle" aria-hidden="true"></i> 非洲</a>-->
<!--                                --><?php
//                                $sql='select name,dirurl from productdir3 WHERE fatherid = 79 order by ordernum asc';
//                                $subdir = $db->queryAll($sql);
//                                foreach($subdir as $value){
//                                    $caselistmenu[]=$value;
//                                    ?>
<!--                                    <a href="--><?php //echo  $value['dirurl'];?><!--" class="subsubmain">--><?php //echo  $value['name'];?><!--</a>-->
<!--                                --><?// }?>
<!--                            </div>-->
<!--                            <div style="clear:both"></div>-->
<!--                        </div>-->
<!--                    </li>-->
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 其他签证<div class="sba-arrow">》</div></a>

                        <div class='subbox '>
                            <div class="subsub ">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-bars" aria-hidden="true"></i> 其他签证分类目录</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 50 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $caselistmenu[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="sb">
                <a href="javascript:;" class="na" style="cursor: default;">资产配置 <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                <ul>


                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 海外上市<div class="sba-arrow">》</div></a>
                        <div class='subbox boxfirst' style="width: 450px">
                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-bar-chart" aria-hidden="true"></i> 海外上市分类目录</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 63 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $zcpz[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                    </li>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 家族信托<div class="sba-arrow">》</div></a>
                        <div class='subbox' style="width: 450px">
                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-credit-card" aria-hidden="true"></i> 家族信托分类目录</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 64 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $zcpz[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>
                    </li>
                    <li class='mainbtn'><a href="javascript:;" class="sba"><i class="fa fa-caret-right" aria-hidden="true"></i> 海外房产<div class="sba-arrow">》</div></a>
                        <div class='subbox' style="width: 450px">
                            <div class="subsub">
                                <a href="javascript:;" class="subsubmain" style="cursor: default;"><i class="fa fa-flag" aria-hidden="true"></i> 海外房产分类目录</a>
                                <?php
                                $sql='select name,dirurl from productdir3 WHERE fatherid = 54 order by ordernum asc';
                                $subdir = $db->queryAll($sql);
                                foreach($subdir as $value){
                                    $zcpz[]=$value;
                                    ?>
                                    <a href="<?php echo  $value['dirurl'];?>" class="subsubmain"><?php echo  $value['name'];?></a>
                                <? }?>
                            </div>
                            <div style="clear:both"></div>
                        </div>

                    </li>
                </ul>
            </div>
            <div class="sb">
                <a href="/event/event.html" class="na">圣鸿活动 <i class="fa fa-gift" aria-hidden="true"></i></a>
                <!--                <ul style="width:500px">-->
                <!--                    <li><a href="/about/about.html" class="sba">了解我们</a></li>-->
                <!--                    <li><a href="/about/contact.html" class="sba">联系我们</a></li>-->
                <!--                    <li><a href="" class="sba">移民定制评估</a></li>-->
                <!--                </ul>-->
            </div>
            <div class="sb">
                <a href="javascript:;" class="na">公司介绍 <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                <ul style="width:500px;background: rgb(245,234,214);background: -moz-linear-gradient(top,  rgba(245,234,214,1) 24%, rgba(222,204,180,1) 100%);background: -webkit-linear-gradient(top,  rgba(245,234,214,1) 24%,rgba(222,204,180,1) 100%);background: linear-gradient(to bottom,  rgba(245,234,214,1) 24%,rgba(222,204,180,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f5ead6', endColorstr='#deccb4',GradientType=0 );border-left:1px solid #be9d67;">
                    <li><a href="/about/about.html" class="sba defaultlink"><i class="fa fa-caret-right" aria-hidden="true"></i> 了解我们</a></li>
                    <li><a href="/about/about.html#map" class="sba defaultlink"><i class="fa fa-caret-right" aria-hidden="true"></i> 联系我们</a></li>
                    <li><a href="/about/server.html" class="sba defaultlink"><i class="fa fa-caret-right" aria-hidden="true"></i> 我们的优势</a></li>
                    <li><a href="javascript:;" class="sba defaultlink"><i class="fa fa-caret-right" aria-hidden="true"></i> 移民定制评估</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>


<div class="top3top">
<header class="top3">
    <div class="title">
        <span class="logo"> <a href="/"><img src="/inc/pics/logo.png" alt=""></a></span>
        <div class="d22">

            <div class="text">
                <span class="t1"><?php echo $siteset['smailbox'];?></span>
                <span class="t2">7*24小时服务热线</span>
            </div>
        </div>
        <span class="menu"></span>
    </div>
    <nav>
        <a href="/" class="na">网站首页</a>

        <div class="sb">
            <a  class="na">移民项目</a>
            <ul>
                <?php foreach($ym as $value){?>
                 <li><a href="<?php echo  $value['dirurl'];?>" class="sba"><?php echo  $value['name'];?></a></li>
                <? }?>
            </ul>
        </div>
        <div class="sb">
            <a  class="na">签证项目</a>
            <ul>
                <?php foreach($caselistmenu as $value){?>
                    <li><a href="<?php echo  $value['dirurl'];?>" class="sba"><?php echo  $value['name'];?></a></li>
                <? }?>
            </ul>
        </div>
        <div class="sb">
            <a  class="na">资产配置</a>
            <ul>
                <?php foreach($zcpz as $value){?>
                    <li><a href="<?php echo  $value['dirurl'];?>" class="sba"><?php echo  $value['name'];?></a></li>
                <? }?>
            </ul>
        </div>
        <div class="sb">
            <a  class="na">圣鸿活动</a>
            <ul>
                <li><a href="/event/event.html" class="sba">圣鸿活动</a></li>
            </ul>
        </div>

        <div class="sb">
            <a  class="na">公司介绍</a>
            <ul>
                <li><a href="/about/about.html" class="sba">了解我们</a></li>
                <li><a href="/about/about.html#map" class="sba">联系我们</a></li>
                <li><a href="/about/server.html" class="sba">我们的优势</a></li>
                <li><a href="javascript:;" class="sba">移民定制评估</a></li>
            </ul>
        </div>

    </nav>
</header>
</div>
