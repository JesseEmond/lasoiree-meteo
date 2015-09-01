# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  tabs = $('ul.tabs')
  tabs.tabs

  tabs.find('li').click -> 
    if not $(this).find('a').hasClass 'active' 
      $('.coldest-city, .hottest-city').toggleClass 'unrelated-city'
