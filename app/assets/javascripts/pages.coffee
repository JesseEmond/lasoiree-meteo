# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

savard_degrees = ->
  $('#metric-explanation').text """
Cette métrique, au nom du Dr. Savard, donne la moyenne des températures
des villes importantes au Canada.
"""

weigthed_degrees = ->
  $('#metric-explanation').text """
Cet indice, inventé par le Dr. Savard, donne la somme des températures au Canada
en excluant les extremums.
"""

$ ->
  tabs = $('ul.tabs')
  tabs.tabs

  tabs.find('li').click -> 
    if not $(this).find('a').hasClass 'active' 
      $('.coldest-city, .hottest-city').toggleClass 'unrelated-city'
      if $(this).find('a').attr('href') == '#savard-degrees'
        savard_degrees()
      else
        weigthed_degrees()
  
  savard_degrees() # Savard degrees by default
