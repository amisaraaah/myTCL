puts "enter number of data to add to list: "
gets stdin num
for {set i 1} {$i <= $num} {incr i} {
    puts "Student ($i/$num) "
    puts "Enter name: "
    gets stdin name
    lappend nameList $name
    puts "Enter age: "
    gets stdin age
    lappend ageList $age
    puts "Enter score: "
    gets stdin score
    lappend scoreList $score
    }
for {set index 0} {$index < $num} {incr index} {
    set dataList [list [lindex $nameList $index] [lindex $ageList $index] [lindex $scoreList $index]]
    lappend masterList $dataList
}

puts "sorting . . ."
puts [lsort -dictionary $masterList]