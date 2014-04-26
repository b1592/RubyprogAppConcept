# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ = jQuery
menu = $('#navigation-menu')
menuToggle = $('#js-mobile-menu')

$(menuToggle).on('click', (e) ->
  e.preventDefault()
  menu.slideToggle( ->
    if menu.is(':hidden')
      menu.removeAttr('style')
    
  )
)



$(document).ready ->
  oTable = $('table').dataTable( {
    "sScrollY": "400px",
    "sDom": "f<'toolbar'>t",
    "bDeferRender": true,
    "aoColumnDefs": [
      { "bSearchable": false, "aTargets": [ 2, 3, 4 ] },
      { "bSortable": false, "aTargets": [ 2, 3, 4 ] }
    ]
  } )

  $("div.toolbar").html('<button id="klas">Klas</button>')

  $('.single-item').slick( {
    dots: true,
    arrows: false,
    slidesToShow: 1,
    infinite: false,
    slide: '.comment'
  } )
  
  $('#klas').click ->
    oTable.fnFilter('5', 1)

