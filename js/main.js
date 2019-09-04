console.log('Powered by Circuit');

$(document).ready(function(){
  $('#content_card_1').hide();
  $('#content_card_2').hide();
});

$('#showCard1').click(function(e){
  e.preventDefault();
  $('#content_card_1').fadeIn();
});

$('#hideCard1').click(function(e){
  e.preventDefault();
  $('#content_card_1').fadeOut();
});

$('#showCard2').click(function(e){
  e.preventDefault();
  $('#content_card_2').fadeIn();
});

$('#hideCard2').click(function(e){
  e.preventDefault();
  $('#content_card_2').fadeOut();
});