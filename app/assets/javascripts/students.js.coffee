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
    "sDom": "t",
    "bDeferRender": true,
    "aoColumnDefs": [
      { "bSearchable": false, "aTargets": [ 4, 5, 6 ] },
      { "bSortable": false, "aTargets": [ 4, 5, 6 ] }
    ]
  } )

  
  $('.single-item').slick( {
    dots: true,
    arrows: false,
    slidesToShow: 1,
    infinite: false,
    autoplay: true,
    autoplaySpeed: 4000,
    slide: '.comment'
  } )
  
  $('#klas').click ->
    oTable.fnFilter('5', 1)

  $('#table-search-bar input').on('input', ->
    oTable.fnFilter( $( this ).val() )
    )
  $('input[name="toggle-graded"]').change ->
    oTable.fnFilter("false|" + $(this).prop('checked') + "", 2, true)
  $('#course-ruby').click ->
    if $(this).hasClass('active')
      oTable.fnFilter("!ruby", 3, true)
    else
      oTable.fnFilter("ruby", 3)
    $(this).toggleClass()

  $('#course-sinatra').click ->
    if $(this).hasClass('active')
      oTable.fnFilter("!sinatra", 3, true)
    else
      oTable.fnFilter("sinatra", 3)
    $(this).toggleClass()





