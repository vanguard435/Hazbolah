$(document).ready(function(){
  setTimeout(function(){
    $('.kill').fadeOut("slow");
  }, 2000);
  	$('#trait_list').click(function(){
  	  $(".fi-prohibited").fadeToggle();
  	})
 })