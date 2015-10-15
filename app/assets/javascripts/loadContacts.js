function loadEmail(name, block) {
  var src="store-spam@yahoo-inc.com";

  var m = src.replace(/^[^@]*/, name);
  m = m.replace(/[^@]*$/, 'heliostech.fr');
  var html = '<a href="mailto:' + m + '">' + m + '</a>';

  $('.' + block).html(html);
}

function loadPhone() {
  $('.phone-number').text('+33 6 72 72 20 19');
}