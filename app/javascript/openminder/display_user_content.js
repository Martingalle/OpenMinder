$(document).ready(function() {
  $('#show-added-tracks').on('click',function(){
    $( ".added-tracks-hidden" ).toggle( "added-tracks-displayed" );
    $(this).text(function(i,text){
      return text === "See all" ? "See less" : "See all";
    })
  });

  $('#show-voted-tracks').on('click',function(){
    $( ".voted-tracks-hidden" ).toggle( "voted-tracks-displayed" );
    $(this).text(function(i,text){
      return text === "See all" ? "See less" : "See all";
    })
  });

});
