$(document).ready(function(){
  $('#goRight').on('click', function(e){
    console.log("hey");
    $('#slideBox').animate({
      'marginLeft' : '0%'
    });
    $('.topLayer').animate({
      'marginLeft' : '100%'
    });
    e.preventDefault();
  });
  $('#goLeft').on('click', function(e){
    $('#slideBox').animate({
      'marginLeft' : '50%'
    });
    $('.topLayer').animate({
      'marginLeft': '0'
    });
    e.preventDefault();
  });
});
