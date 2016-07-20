// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
// 
//= require jquery
 //= require jquery_ujs
 //= require turbolinks
 //= require_tree .

$(document).on("ready", function(){
	$(".js-ingred").on("click", addIngredient)
		
	
})

function addIngredient (event) {
	event.preventDefault();
	var ingre1 = $(".js-ingred").attr("data")
 var idIngre = $(event.currentTarget).attr("data")
 
 
	                                                  // data-ingr-id="57"
	var ingredient_data = { ingredient_id: idIngre };
	var sandwich_id = $("#yo").attr("data")
console.log(idIngre)
	$.ajax({
		type: "post",
		url: `/api/sandwiches/${sandwich_id}/ingredients/add`,
		data: ingredient_data,
		success: function(response) { $(".js-ingredient-list").append(`<li> ${response.name} </li>`)
	}

	})
}

