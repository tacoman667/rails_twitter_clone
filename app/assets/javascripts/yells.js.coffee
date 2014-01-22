# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready =>
	$user_name = $("#yell_user_name")
	$content = $("#yell_content")
	if $user_name.val().length > 0
		$content.focus()
	else
		$user_name.focus()

	$content.on 'keyup', (ev) =>
		if ev.keyCode == 13
			ev.preventDefault()
			$("form").submit()
			return false
		
	$("a[data-remote]").on 'ajax:success', (e, data, status, xhr) =>
		$($(e.target).parents(".yell-item")).remove()