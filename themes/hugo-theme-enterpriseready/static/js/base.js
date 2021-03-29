$(document).ready(function() {
    $("#tool-tip").hover(
        function() {
            $(".tool-tip").fadeIn(200);
        },
        function() {
            $(".tool-tip").fadeOut(100);
        }
    );

});