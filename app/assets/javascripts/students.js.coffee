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
      { "bSearchable": false, "aTargets": [ 5, 6, 7 ] },
      { "bSortable": false, "aTargets": [ 5, 6, 7 ] }
    ]
  } )
  oTable.fnSetColumnVis( 4, false )
  
  $('.single-item').slick( {
    dots: true,
    arrows: false,
    slidesToShow: 1,
    infinite: false,
    vertical: true,
    autoplay: true,
    autoplaySpeed: 4000,
    slide: '.comment'
  } )

  fnShowHide = (iCol) ->
    bVis = oTable.fnSettings().aoColumns[iCol].bVisible
    oTable.fnSetColumnVis( iCol, bVis ? false : true )
    alert(oTable.fnSetColumnVis)
    
  
  $('#klas').click ->
    oTable.fnFilter('5', 1)

  $('#table-search-bar input').on('input', ->
    oTable.fnFilter( $( this ).val() )
    )
  $('input[name="toggle-graded"]').change ->
    oTable.fnFilter("false|" + $(this).prop('checked') + "", 2, true)
  $('#course-ruby').click ->
    if $(this).hasClass('active')
      
    else
      oTable.fnSetColumnVis( 3, true )
      oTable.fnSetColumnVis( 4, false )
      $(this).addClass("active")
      $('#course-sinatra').removeClass("active")

  $('#course-sinatra').click ->
    if $(this).hasClass('active')
      
    else
      oTable.fnSetColumnVis( 4, true )
      oTable.fnSetColumnVis( 3, false )
      $(this).addClass("active")
      $('#course-ruby').removeClass("active")
  
  




