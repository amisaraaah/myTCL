puts "Enter few numbers separeted by comma: "
gets stdin nums
set myList [split $nums ,]
set copyList $myList
foreach num $myList {
    set sq [expr $num*$num]
    set sqList [lappend sqList $sq]
}
#set sqList [lmap num $myList {expr {$num * $num}}]
puts $sqList
puts "removing odd square . . . \n"
foreach num $copyList {
    if {[expr $num % 2] != 0} {
        set index [lsearch $copyList $num]
        set sqList [lreplace $sqList $index $index]
        set copyList [lreplace $copyList $index $index]
    }
}
puts $myList
puts "The new list of squares is: \n"
puts $sqList