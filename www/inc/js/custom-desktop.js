$(window).scroll( function() {               //滚动时触发
    var top = $(document).scrollTop();       //获取滚动条到顶部的垂直高度
    var bottomhight=$(document).height() - $(window).height() - $(window).scrollTop();

    if(bottomhight<100){                           //到一定高度显示
        var height = $(window).height();     //获得可视浏览器的高度
        $("#backToTop2").fadeIn(300).css({
            top: height-53
        });
    }
    if(top < 100){                            //小于100消失
        $("#backToTop2").fadeOut(200);

        $(".top.toptop,.top2top").fadeIn(200);
        $(".mainmenutop").css('top','117px');
    }

    if(top > 100){
        $(".top.toptop,.top2top").fadeOut(200);
        $(".mainmenutop").css('top','0px');
    }

});