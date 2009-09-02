$(document).ready(function() {

  $('.delete').click(function() {
    if(confirm('Are you sure?')) {
      var f = document.createElement('form');
      $(this).after($(f).attr({
        method: 'post',
        action: $(this).attr('href'),
        style: 'display: none'
      }).append('<input type="hidden" name="_method" value="delete" />'));
      $(f).submit();
    }
    return false;
  });
  
  $('.put').click(function() {
    var f = document.createElement('form');
    $(this).after($(f).attr({
      method: 'post',
      action: $(this).attr('href'),
      style: 'display: none'
    }).append('<input type="hidden" name="_method" value="put" />'));
    $(f).submit();
    return false;
  });

});