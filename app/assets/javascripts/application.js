// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require isotype.js
//= require spectrum.js
//= require_tree .
jQuery(window).load(function () {
  // Takes the gutter width from the bottom margin of .closet_item

  var gutter = parseInt(jQuery('.closet_item').css('marginBottom'));
  var container = jQuery('#closet');

  // Creates an instance of Masonry on #closet

  container.masonry({
    gutter: gutter,
    itemSelector: '.closet_item',
    columnWidth: '.closet_item'
  });
  
  
  // This code fires every time a user resizes the screen and only affects .closet_item elements
  // whose parent class isn't .container. Triggers resize first so nothing looks weird.
  
  jQuery(window).bind('resize', function () {
    if (!jQuery('#closet').parent().hasClass('container')) {

      // Resets all widths to 'auto' to sterilize calculations
      
      closet_item_width = jQuery('.closet_item').width() + gutter;
      jQuery('#closet, body > #grid').css('width', 'auto');
      

      // Calculates how many .closet_item elements will actually fit per row. Could this code be cleaner?
      
      closet_per_row = jQuery('#closet').innerWidth() / closet_item_width;
      floor_closet_width = (Math.floor(closet_per_row) * closet_item_width) - gutter;
      ceil_closet_width = (Math.ceil(closet_per_row) * closet_item_width) - gutter;
      closet_width = (ceil_closet_width > jQuery('#closet').innerWidth()) ? floor_closet_width : ceil_closet_width;
      if (closet_width == jQuery('.closet_item').width()) {
        closet_width = '100%';
      }
      
      // Ensures that all top-level elements have equal width and stay centered
      
      jQuery('#closet, #grid').css('width', closet_width);
      jQuery('#grid').css({'margin': '0 auto'});

    }
  }).trigger('resize');



});












































