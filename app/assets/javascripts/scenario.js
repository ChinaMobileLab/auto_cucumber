$(document).ready(function(){
  $("#histoy_givens").change(function(){
  	var selected = $(this).children("option:selected")[0].text
  	var last_field = $("#histoy_givens").parent().children(".fields").last()
  	$(last_field).children("textarea").val(selected)
  });
   
  $(".remove_nested_fields").live('click', function(){
  	$(this).parent().remove()
  });

});