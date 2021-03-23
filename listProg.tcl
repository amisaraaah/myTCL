set masterList {}
set data "Ami,1,103"
set data2 "Sarah,67,5"
set data3 "Maria,231,81"
set l1 [split $data ,]
set l2 [split $data2 ,]
set l3 [split $data3 ,]
puts [lappend masterList $l1]
puts [lappend masterList $l2]
lappend masterList $l3
puts [lrange $masterList 0 2]
puts "sorted by name"
puts [lsort $masterList]
puts "sorted by age"
puts [lsort -integer -index  1 $masterList]
puts "sorted by mark"
puts [lsort -integer -index  2 $masterList]

if 0 {
    set data1 "Tom,19,80"
    set data2 "John,20,90"
    set data3 "Jony,17,91"
    set data4 "Jony,17,93"
    set data5 "Json,22,85"
    set l1 [split $data1 ,]
    set l2 [split $data2 ,]
    set l3 [split $data3 ,]
    set l4 [split $data4 ,]
    set l5 [split $data5 ,]
    set masterList {}
    puts [lappend masterList $l1 $l2 $l3 $l4 $l5]
}