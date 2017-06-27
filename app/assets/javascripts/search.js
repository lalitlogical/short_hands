// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require typeahead/handlebars.min
//= require typeahead/typeahead.bundle.min

window.reintialize = function(url) {
  var source = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      url: url + '/autocomplete?query=%QUERY',
      wildcard: '%QUERY'
    }
  });

  $('#search').typeahead(null, {
    source: source
  });

  $('#search').bind('typeahead:select', function(ev, suggestion) {
    applySuggestion(ev, suggestion);
  });

  $('#search').bind('typeahead:cursorchange', function(ev, suggestion) {
    applySuggestion(ev, suggestion, true);
  });
}
