// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require twitter/bootstrap

$(document).ready(function(){

	//begin todo list


	var $newListItem = $('<div id="dates">'+
			'<li>Start Date: <input type="date" name="startdate"></li><br>'+
			'<li>Return Date: <input type="date" name="returndate"></li><br>'+
			'</div>'
		);
	var addDate = function(event) {
		console.log("addDate");
		console.log(this)

		$('ul.reserve').append($newListItem);
		$newListItem.fadeIn();

		// event.preventDefault();

		// newListItem.css('display', 'none');
		// if ($('.reserve').length > 1) {
		// 	console.log($('.reserve').length);
		// } else {
		// 	$('ul.reserve').append(newListItem);
		// 	newListItem.fadeIn();
		// }
	}

	function hideDate(event) {
		$newListItem.fadeOut()
		$newListItem.remove()
	}

$('#reservation').on('click', addDate)
$('#general').on('click', hideDate)


//end of document.ready	
});