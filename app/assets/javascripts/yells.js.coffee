# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready =>
	$content = $("#yell_content")
	$content.focus()

	$content.on 'keyup', (ev) =>
		if ev.keyCode == 13
			ev.preventDefault()
			$("form").submit()
			return false
		
	$("a[data-remote]").on 'ajax:success', (e, data, status, xhr) =>
		$($(e.target).parents(".yell-item")).remove()