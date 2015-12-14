String.prototype.toHHMMSS = function () {
    var delta = parseInt(this, 10); // don't forget the second param
    // calculate (and subtract) whole days
    var days = Math.floor(delta / 86400);
    delta -= days * 86400;

    // calculate (and subtract) whole hours
    var hours = Math.floor(delta / 3600) % 24;
    delta -= hours * 3600;

    // calculate (and subtract) whole minutes
    var minutes = Math.floor(delta / 60) % 60;
    delta -= minutes * 60;

    // what's left is seconds
    var seconds = delta % 60;  // in theory the modulus is not required

    var dDays = (days > 0);
    var dHours = (hours > 0);
    var dMinutes = (minutes > 0);
    if (hours   < 10) {hours   = "0"+hours;}
    if (minutes < 10) {minutes = "0"+minutes;}
    if (seconds < 10) {seconds = "0"+seconds;}
    var time = "";
    if(dDays){
        time += days + ":";
    }
    if(dHours){
        time += hours + ":";
    }
    if(dMinutes){
        time += minutes + ":";
    }
    time += seconds;
    return time;
};

$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    }).each(function(index, element){
        console.log($(this).data('active'));
        if(!$(this).data('active')){
            $(this).parent().children('ul.tree').toggle(300);
        }
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
    });

    $(".registerBtn").click(function(){
        $(".register").css('display', 'block');
    });

    $(".countdown").each(function(index, element){
        var startTime = parseInt($(this).text(), 10);
        var time = 0;
        var obj = $(this);



        var timeFunc = function(){
            var v = (startTime - time);
            if(v < (4*3600)){
                obj.css("color", "#ff0d00");
            }
            var t = (v+'').toHHMMSS();
            obj.text(t);

            time+=1;
            setTimeout(timeFunc, 1000);
        };

        var days = Math.floor(startTime / 86400);
        if(days == 0) {
            timeFunc();
        }else{
            obj.text(days + " dag" + (days > 1 ? "en" : ""));
        }
    });

    $(".avatar").click(function(){
        $(".usermenu").toggle(600,'swing');
    });

    $(".clickable").click(function(){
        window.location.href = $(this).data('link');
    })

    // Options
    var options = {
        max_value: 5,
        step_size: 0.5,
        initial_value: 0,
        selected_symbol_type: 'fontawesome_star', // Must be a key from symbols
        cursor: 'default',
        readonly: true
    };

    $(".rating").rate(options);

    $(".numeric_only").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                // Allow: Ctrl+A, Command+A
            (e.keyCode == 65 && ( e.ctrlKey === true || e.metaKey === true ) ) ||
                // Allow: home, end, left, right, down, up
            (e.keyCode >= 35 && e.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
});