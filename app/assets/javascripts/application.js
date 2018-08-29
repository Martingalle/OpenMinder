//= require rails-ujs
//= require_tree .
$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
  });
});
