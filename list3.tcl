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
puts "\nsorting . . ."
puts "Names:"
puts [lsort -dictionary $nameList]
puts "Ages:"
puts [lsort -dictionary $ageList]
puts "Scores:"
puts [lsort -dictionary $scoreList]