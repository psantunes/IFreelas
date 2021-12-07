// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

var jQuery = require("jquery");
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import "bootstrap"
import "fontawesome-4.7/css/font-awesome.css"
import AOS from "aos"
import "owl.carousel2"
import "smooth-scroll"
import toastr from 'toastr'
window.toastr = toastr
toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": true,
  "progressBar": false,
  "positionClass": "toast-top-left",
  "preventDuplicates": true,
  "onclick": null,
  "showDuration": "0",
  "hideDuration": "0",
  "timeOut": "0",
  "extendedTimeOut": "0",
	"escapeHtml": false
}

$(function () {

	// MENU
	$('.nav-link').on('click',function(){
		$(".navbar-collapse").collapse('hide');
	});


	// AOS ANIMATION
	AOS.init({
		disable: 'mobile',
		duration: 800,
		anchorPlacement: 'center-bottom'
	});


	// SMOOTH SCROLL
	$(function() {
		$('.smoothScroll').on('click', function(event) {
			var $anchor = $(this);
				$('html, body').stop().animate({
					scrollTop: $($anchor.attr('href')).offset().top - 0
				}, 1000);
					event.preventDefault();
		});
	});  


	// PROJECT SLIDE
	$('#project-slide').owlCarousel({
		loop: true,
		center: true,
		autoplayHoverPause: false,
		autoplay: true,
		margin: 30,
		responsiveClass:true,
		responsive:{
				0:{
						items:1,
				},
				768:{
						items:2,
				}
		}
	});

});