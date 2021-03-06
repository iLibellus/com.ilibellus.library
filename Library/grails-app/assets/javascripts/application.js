// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery 
//= require js/jquery-ui-1.10.4.custom
//= require bootstrap
//= require typeahead
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
	console.log('jQuery Loaded');
	console.log(jQuery.fn.jquery);
} else {
	console.log('not loaded yet');
}
if (typeof jQuery.ui != 'undefined') {
	  // UI loaded
	console.log('jQuery Loaded');
} else {
	console.log('jqUI not loaded yet');
}
