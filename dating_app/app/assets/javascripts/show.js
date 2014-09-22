$(document).ready(function(){

  $('.search_image').mouseenter(function(ev) {
    var userid = $( ev.currentTarget ).data('user-id');
    $("#image_name_"+userid).slideDown();
  });

  $('.search_image').mouseleave(function(ev) {
    var userid = $( ev.currentTarget ).data('user-id');
    $("#image_name_"+userid).slideUp();
  });

});