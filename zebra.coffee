do ($ = jQuery) ->
    $.fn.zebraTable = (options) ->
        defaults = 
            evenColor: '#ccc'
            oddColor : '#eee'
    
        options = $.extend(defaults, options)
        @each ->
            $("tr:even", this).css('background-color', options.evenColor)
            $("tr:odd" , this).css('background-color', options.oddColor)



$ -> $("table").zebraTable()
