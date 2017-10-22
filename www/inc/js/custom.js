
$('.menu').on('click', function() { //手机点击展开显示菜单
    $(this).toggleClass('down');
    $(this).parent('.title').siblings('nav').slideToggle(300);
    return false;
});

/**/

$('.weixinboxact').mouseover(function() {
    $(this).find('.weixinbox').show();
}).mouseout(function() {
    $(this).find('.weixinbox').hide();
});

$('.mainmenuwrap .sb').mouseover(function() { // PC放上去显示二级
    $(this).find('.na').toggleClass('nahover');
    $(this).find('ul').show();
}).mouseout(function() {
    $(this).find('.na').toggleClass('nahover');
    $(this).find('ul').hide();
    $(this).find('.boxfirst').show();
});


$('.mainbtn').mouseover(function() { // PC放上去显示二级

    $(this).parent('ul').find('.boxfirst').hide();

    $(this).find('.subbox').show();
    $(this).find('.sba-arrow').show();

}).mouseout(function() {

    $(this).find('.subbox').hide();
    $(this).find('.sba-arrow').hide();
});


$('.top3 .sb').on("click", function (e) {//手机二级显示问题
    $(this).find('ul').show().end().siblings().find('ul').hide();
});


$(document).on('click', function(event) { //除了空白点击 隐藏菜单
    if(($(event.target).closest('.top3 .sb').get(0) == null)){
        if (!$('.top3 nav').is(":hidden")) {
            $('.top3 .menu').trigger("click");
        }
    }

});


$(document).ready(function() {

    $(document).on('mouseover mouseout','.mousehover',function(){
        if(event.type == "mouseover"){
            $(this).addClass("acthover");
        }else if(event.type == "mouseout"){
            $(this).removeClass("acthover");
        }
    });


    /*点击回到顶部*/
    $('#backToTop2').click(function(){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });


});







