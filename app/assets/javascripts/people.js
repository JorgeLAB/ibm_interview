$(document).ready(function() {
  $("select#person_state_id").change(function(){
    $.ajax({
      url: "/get_cities.json",
      dataType: 'json',
      data: { state_id: $(this).val() },
      success: function(data){
        console.log(data);
        $("select#person_city_id").empty();
        $.each(data, function(i,city) {
            $("<option value='" + city.id + "'>" +city.name + "</option>").appendTo("select#person_city_id");
        });
        $("select#person_city_id").prop("disabled", false);
      },
      error: function(){ alert("Sorry, we can't request cities. :("); }
    });
  });
});
