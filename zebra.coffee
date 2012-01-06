$ = jQuery
$.fn.zebraTable = (options)->
    defaults = 
        evenColor: '#ccc',
        oddColor: '#eee'
    
    options = $.extend(defaults, options)
    return @.each( ->
        $("tr:even", @).css('background-color', options.evenColor);               
        $("tr:odd", @).css('background-color', options.oddColor);                   
        )



$(-> 
    ($ "table").zebraTable()   
)
