set data5 "a,19,80"
set data3 "a,2,90"
set data2 "b,3,99"
set data4 "b,24,100"
set data1 "b,24,99"
set l1 [split $data1 ,]
set l2 [split $data2 ,]
set l3 [split $data3 ,]
set l4 [split $data4 ,]
set l5 [split $data5 ,]
puts "sorting . . ."
set masterList {}
set masterList1 {}
puts [lappend masterList $l1 $l2 $l3 $l4 $l5]
puts [concat $masterList1 $l1 $l2 $l3 $l4 $l5]
#puts [lsort -dictionary -index 0 $masterList]
puts [lsort -command $masterList]
set count 0
set x [lindex $l5 0]
if {[regexp ^$x, $data3]} {
    incr count 
}




if 0 {
for {set index 0} {$index <= [llength $masterList]} {incr index} {
    foreach item [$masterList] {

    }
}
}

