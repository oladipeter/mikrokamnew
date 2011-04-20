/**
 * Created by .
 * User: oladipeter
 * Date: 2011.03.30.
 * Time: 14:29
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function() {
  $(".slidetabs").tabs(".images > div", {

	// enable "cross-fading" effect
	effect: 'fade',
	fadeOutSpeed: "slow",

	// start from the beginning after the last tab
	rotate: true

  // use the slideshow plugin. It accepts its own configuration
  }).slideshow();

  $(".slidetabs").data("slideshow").play();

  $('.play').click(function() {
    $(".slidetabs").data("slideshow").play();
  });

  $('.stop').click(function() {
    $(".slidetabs").data("slideshow").stop();
  });

});
