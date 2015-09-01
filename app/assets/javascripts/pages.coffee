# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  tabs = $('ul.tabs')
  tabs.tabs

  tabs.click ->
    $('.coldest-city, .hottest-city').toggleClass 'unrelated-city'
