# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

drag_and_drop = undefined

drag_and_drop = ->
  $('.sortable').sortable()
  return

$(document).ready drag_and_drop
