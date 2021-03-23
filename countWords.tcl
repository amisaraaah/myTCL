proc countWords {myStr} {
    set myList [split $myStr " "]
    set uniqueList [lsort -unique $myList]
    #puts [lindex $myList 4]
    foreach item $uniqueList {
        set subStr $item
        set count 0
        foreach word $myList {
            if {![string compare $word $subStr]} {
                incr count
            }
        }
        puts "$subStr was found $count time(s)"
    }
}
countWords "this is a test this has a test test"