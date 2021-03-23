if 0 {
    set months(Jan) 01
    set months(Feb) 02
    set months(Mar) 03
    set months(Apr) 04
    set months(May) 05
    set months(xxx) {i am a wrong item}
    # find out why upvar is not working
    proc printMyArray {arr} {
        upvar $elem arr
        foreach elem $arr {
            puts [array names elem]
        }
    }
    puts [printMyArray months]
}
