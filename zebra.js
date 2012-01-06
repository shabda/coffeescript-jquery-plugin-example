(function() {
  var $;

  $ = jQuery;

  $.fn.zebraTable = function(options) {
    var defaults;
    defaults = {
      evenColor: '#ccc',
      oddColor: '#eee'
    };
    options = $.extend(defaults, options);
    return this.each(function() {
      $("tr:even", this).css('background-color', options.evenColor);
      return $("tr:odd", this).css('background-color', options.oddColor);
    });
  };

  $(function() {
    return ($("table")).zebraTable(  {
        evenColor: 'red',
        oddColor: 'yellow'
      });
  });

}).call(this);
