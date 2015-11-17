$(document).ready(function () {
    $('label.tree-toggler').click(function () {
        $(this).parent().children('ul.tree').toggle(300);
    });
    $('label.tree-toggler').each(function(index, element){
        $(this).parent().children('ul.tree').toggle(300);
    });
});