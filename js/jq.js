$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    });
    $('label.tree-toggler').each(function(index, element){
        $(this).parent().children('ul.tree').toggle(300);
    });

    var menu = $('.menu');
    var content = $('.content');
    var sidebar = $('.sidebar');
    var origOffsetY = menu.offset().top;

    function scroll() {
        if ($(window).scrollTop() >= origOffsetY) {
            menu.addClass('sticky');
            content.css('padding-top', origOffsetY);
        } else {
            menu.removeClass('sticky');
            content.css('padding-top', "");
        }

        sidebar.css('top', (menu.offset().top - $(window).scrollTop()) + menu.outerHeight());
    }

    document.onscroll = scroll;

    $(".loginBtn").click(function(){
        $(".login").css('display', 'block');
    });

    $(".login").click(function() {
        /*$(".login").css('display', 'none');*/
    })

});