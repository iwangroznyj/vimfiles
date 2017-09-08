" Clamp a `value` between `min` and `max`.
function! Clamp(value, min, max)
    return min([a:max, max([a:min, a:value])])
endfunction

" Create a string of a given `length` filled with the string `filler`.
function! FilledString(length, filler)
    if empty(a:filler)
        echoerr 'Empty fill string'
        return ''
    endif

    let new_string = repeat(a:filler, a:length / strlen(a:filler))
    if strlen(new_string) < a:length
        let new_string .= a:filler[:a:length - strlen(new_string) - 1]
    endif

    return new_string
endfunction

" Remove whitespace at the beginning and end of a `string`.
function! Strip(string)
    return substitute(a:string, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction
