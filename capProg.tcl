puts "enter number of sentences: "
gets stdin num
puts "Enter few sentences: "
for { set count 1}  {$count <= $num} {incr count} {
    gets stdin someStr
    set myList [lappend myList $someStr]
}
foreach item $myList {
    set output [string toupper $item]
    puts $output 
}
