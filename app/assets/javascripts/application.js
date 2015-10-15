// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require loadContacts
//
// THEME
//
//= require pi.helpers
//= require pi.columnFix
//= require pi.init.placeholder
//= require pi.scrollTopArrow
//= require pi.counter
//= require pi.fixedHeader
//= require pi.parallax
//= require pi.mobileMenu
//= require pi.ddMenu
//= require pi.slider
//= require pi.imagesLoader
//= require pi.boundManager
//
// INIT THEME
//
//= require pi.init.colorbox
//= require pi.init.counter
//= require pi.init.jqueryScrollTo
//= require pi.init.parallax
//= require pi.init.revolutionSlider
//= require pi.init.social
//= require pi.init.removeLastElMargin
//= require pi.init.slider
//
// VENDOR
//
//= require owlcarousel/owl.carousel
//= require rs-plugin/js/jquery.themepunch.tools.min
//= require rs-plugin/js/jquery.themepunch.revolution.min
//= require FitVids.js/jquery.fitvids
//= require jquery.easing.1.3
//= require jquery.scrollTo.min
//= require gauge.min
//= require respond.min
//= require inview

$(document).ready(function() {
  loadEmail('contact', 'mbox-contact');
  loadPhone();
});
