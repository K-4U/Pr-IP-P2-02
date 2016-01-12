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
    if (hours < 10) {
        hours = "0" + hours;
    }
    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    if (seconds < 10) {
        seconds = "0" + seconds;
    }
    var time = "";
    if (dDays) {
        time += days + ":";
    }
    if (dHours) {
        time += hours + ":";
    }
    if (dMinutes) {
        time += minutes + ":";
    }
    time += seconds;
    return time;
};

$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    }).each(function (index, element) {
        if (!$(this).data('active')) {
            $(this).parent().children('ul.tree').toggle(1);
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

    $(".loginBtn").click(function () {
        $(".login").css('display', 'block');
        $(".modal").css('display','block');
        $(".loginBox").css('z-index', '9999');
    });


    $(".modal").click(function () {
        $(".login").css('display', 'none');
        $(".register").css('display', 'none');
        $(".modal").css('display', 'none');
        $(".loginBox").css('z-index', '-3');
        $(".registerBox").css('z-index', '-3');
    });

    $(".registerBtn").click(function () {
        $(".register").css('display', 'block');
        $(".modal").css('display','block');
        $(".registerBox").css('z-index', '9999');
    });

    $(".countdown").each(function (index, element) {
        var startTime = parseInt($(this).text(), 10);
        var time = 0;
        var obj = $(this);


        var timeFunc = function () {
            var v = (startTime - time);
            if (v < (4 * 3600)) {
                obj.css("color", "#ff0d00");
            }
            if(v < 0){
                obj.text("Afgelopen");
            }else {
                var t = (v + '').toHHMMSS();
                obj.text(t);

                time += 1;
                setTimeout(timeFunc, 1000);
            }
        };

        if(startTime > 0) {
            var days = Math.floor(startTime / 86400);
            if (days == 0) {
                timeFunc();
            } else {
                days++;
                obj.text(days + " dag" + (days > 1 ? "en" : ""));
            }
        }else{
            obj.text("Afgelopen");
        }
    });

    $(".avatar").click(function () {
        $(".usermenu").toggle(300, 'swing');
    });

    $(".clickable").click(function () {
        window.location.href = $(this).data('link');
    });

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

    $(".alpha-only").on("keydown", function (e) {
        // Allow controls such as backspace
        var arr = [8, 16, 17, 20, 32, 35, 36, 37, 38, 39, 40, 45, 46];

        // Allow letters
        for (var i = 65; i <= 90; i++) {
            arr.push(i);
        }

        // Prevent default if not in array
        if (jQuery.inArray(e.which, arr) === -1) {
            e.preventDefault();
        }
    });

    $(".alpha-only").on("input", function () {
        var regexp = /[^a-zA-Z]/g;
        if ($(this).val().match(regexp)) {
            $(this).val($(this).val().replace(regexp, ''));
        }
    });

    function toPage(p) {
        var loc = window.location.pathname.split("/");
        if(loc.length == 4){
            loc.pop();
        }
        var l = loc.join("/");

        window.location = l + "/" + p;
    }

    $('.pagination .pagination-prev').click(function () {

        var page = getCurrentPage();
        if(page > 0) {
            toPage(parseInt(page) - 1);
        }
    }).each(function (){
        var page = getCurrentPage();
        if(page == 0){
            $($(this).parent()).addClass("disabled");
        }
    });

    $('.pagination .pagination-next').click(function () {

        var page = getCurrentPage();
        if(page < parseInt($("#maxPages").val(), 10)){
            toPage(parseInt(page) + 1);
        }
    }).each(function (){
        var page = getCurrentPage();
        if(page == parseInt($("#maxPages").val(), 10)+1){
            $($(this).parent()).addClass("disabled");
        }
    });

    $('.pagination .pagination-button').click(function () {
        //Get text value
        if($(this).text() == "..."){ return;}
        var p = parseInt($(this).text());
        p = p - 1;
        toPage(p);
    }).each(function (index) {
        var p = parseInt($(this).text());
        p = p - 1;
        var page = parseInt(getCurrentPage(), 10);

        if (page == p) {
            $($(this).parent()).addClass("active");
        }
    });

    $("#searchButton").click(function () {
        var search = $("#searchTxt").val();
        window.location.href = $(this).data('link') + search;
    });

    $('#searchTxt').on('keypress', function (event) {
        if(event.which === 13){
            var search = $("#searchTxt").val();
            window.location.href = $("#searchButton").data('link') + search;
            event.preventDefault()
        }
    });


    var maxObjectHeight = 0;
    $.each($(".object"), function(){
        maxObjectHeight = (maxObjectHeight < $(this).outerHeight() ? $(this).outerHeight() : maxObjectHeight);
    });
    $(".object").css('min-height', maxObjectHeight);
});


function getCurrentPage() {
    var loc = window.location.pathname.split("/");

    var currentPage = 0;
    if (loc.length == 4) {
        currentPage = loc[3];
    }
    return currentPage;
}