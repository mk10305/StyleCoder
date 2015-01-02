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




function printColor(color) {
   var text = "You chose... " + color.toHexString();    
   $(".label").text(text);
    
}

$("#showPaletteOnly").spectrum({
    color: "rgb(244, 204, 204)",    
    showPaletteOnly: true,
    change: function(color) {
        printColor(color);
    },
    palette: [
        ["rgb(0, 0, 0)", "rgb(67, 67, 67)", "rgb(102, 102, 102)",
        "rgb(204, 204, 204)", "rgb(217, 217, 217)","rgb(255, 255, 255)"],
        ["rgb(152, 0, 0)", "rgb(255, 0, 0)", "rgb(255, 153, 0)", "rgb(255, 255, 0)", "rgb(0, 255, 0)",
        "rgb(0, 255, 255)", "rgb(74, 134, 232)", "rgb(0, 0, 255)", "rgb(153, 0, 255)", "rgb(255, 0, 255)"], 
        ["rgb(230, 184, 175)", "rgb(244, 204, 204)", "rgb(252, 229, 205)", "rgb(255, 242, 204)", "rgb(217, 234, 211)", 
        "rgb(208, 224, 227)", "rgb(201, 218, 248)", "rgb(207, 226, 243)", "rgb(217, 210, 233)", "rgb(234, 209, 220)", 
        "rgb(221, 126, 107)", "rgb(234, 153, 153)", "rgb(249, 203, 156)", "rgb(255, 229, 153)", "rgb(182, 215, 168)", 
        "rgb(162, 196, 201)", "rgb(164, 194, 244)", "rgb(159, 197, 232)", "rgb(180, 167, 214)", "rgb(213, 166, 189)", 
        "rgb(204, 65, 37)", "rgb(224, 102, 102)", "rgb(246, 178, 107)", "rgb(255, 217, 102)", "rgb(147, 196, 125)", 
        "rgb(118, 165, 175)", "rgb(109, 158, 235)", "rgb(111, 168, 220)", "rgb(142, 124, 195)", "rgb(194, 123, 160)",
        "rgb(166, 28, 0)", "rgb(204, 0, 0)", "rgb(230, 145, 56)", "rgb(241, 194, 50)", "rgb(106, 168, 79)",
        "rgb(69, 129, 142)", "rgb(60, 120, 216)", "rgb(61, 133, 198)", "rgb(103, 78, 167)", "rgb(166, 77, 121)",
        "rgb(91, 15, 0)", "rgb(102, 0, 0)", "rgb(120, 63, 4)", "rgb(127, 96, 0)", "rgb(39, 78, 19)", 
        "rgb(12, 52, 61)", "rgb(28, 69, 135)", "rgb(7, 55, 99)", "rgb(32, 18, 77)", "rgb(76, 17, 48)"]
    ]
});








































