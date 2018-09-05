$(document).ready(function() {
  $('#show-tracks').on('click',function(){
    $( ".user-track.added.hidden" ).removeClass( "hidden" );
  });
  $('#show-voted-tracks').on('click',function(){
    $( ".user-track.voted.hidden" ).removeClass( "hidden" );
  });
});
