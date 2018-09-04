$(document).ready(function() {
  $('#show-tracks').on('click',function(){
    $( ".user-track.hidden" ).removeClass( "hidden" );
  });
  $('#show-voted-tracks').on('click',function(){
    $( ".user-track.hidden-tracks" ).removeClass( "hidden-tracks" );
  });
});
