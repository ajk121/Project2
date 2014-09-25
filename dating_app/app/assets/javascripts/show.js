$(document).ready(function(){

  // $('.search_image').mouseenter(function(ev) {
  //   var userid = $( ev.currentTarget ).data('user-id');
  //   $("#image_name_"+userid).slideDown();
  // });

  // $('.search_image').mouseleave(function(ev) {
  //   var userid = $( ev.currentTarget ).data('user-id');
  //   $("#image_name_"+userid).slideUp();
  // });

$( '.dropdown' ).hover(
  function(){
    $(this).children('.sub-menu').slideDown(300);
  },
  function(){
    $(this).children('.sub-menu').slideUp(300);
  }
  );


$('#open_search_button').on('click', function(e){
  e.preventDefault;
  $('#search').slideDown(300);
  $('#open_search_button').addClass('hidden');
  $('#close_search_button').removeClass('hidden');
});

$('#close_search_button').on('click', function(e){
  e.preventDefault;
  $('#search').slideUp(300);
  $('#close_search_button').addClass('hidden');
  $('#open_search_button').removeClass('hidden');
});



$('#message_new').on('click', function(e){
  e.preventDefault;
  $('#message_form').fadeIn(500);
  $('#message_new').addClass('hidden');
  $('#close_message').removeClass('hidden');
});

$('#close_message').on('click', function(e){
  e.preventDefault;
  $('#message_form').fadeOut(300);
  $('#close_message').addClass('hidden');
  $('#message_new').removeClass('hidden');
});


});