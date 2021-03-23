puts "Enter few things separeted by comma: "
gets stdin things
set myList [split $things ,]
puts "Enter something: "
gets stdin item
set myIndex [lsearch $myList $item]
#puts $myIndex
if {$myIndex!= -1} {
    puts "Item found at index $myIndex ! deleting..."
    set myList [lreplace $myList $myIndex $myIndex]
    }
puts "Adding new item at the start and end !"
set myList [linsert $myList 0 $item]
set myList [lappend myList $item]
puts "Final List: "
puts $myList