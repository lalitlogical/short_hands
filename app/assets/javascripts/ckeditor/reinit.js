$(document).bind('turbolinks:load', function() {
  $('textarea.ckeditor').each(function() {
    if ($(this).css('visibility') != 'hidden') {
        CKEDITOR.replace($(this).attr('id'));
    }
  });
});
