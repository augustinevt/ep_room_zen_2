$(function(){
  $('#house-map-show').mouseenter(function(){
    $('body').addClass('noscroll');
  });
  $('#house-map-show').mouseleave(function(){
    $('body').removeClass('noscroll');
  });
});
