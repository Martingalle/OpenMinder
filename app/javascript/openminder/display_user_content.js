$(document).ready(function() {
  $('#show-tracks').on('click',function(){
    console.log("tracks");
    $( ".user-track.added.hidden" ).removeClass( "hidden" );
  });
  $('#show-voted-tracks').on('click',function(){
    console.log("voted");
    $( ".user-track.voted.hidden" ).removeClass( "hidden" );
  });
});
