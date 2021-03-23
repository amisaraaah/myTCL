puts "enter number of students: "
gets stdin num
for { set count 1}  {$count <= $num} {incr count} {
    puts "Student ($count/$num) "
    puts "Enter Attendance: "
    gets stdin att
    if {$att >= 75} {
        puts "Enter Mark: "
        gets stdin mark
        if {$mark < 50} {
        puts "Your Grade is F"
        } elseif {$mark >= 50 && $mark < 60} {
            puts "Your Grade is E"
        } elseif {$mark >= 60 && $mark < 70} {
            puts "Your Grade is D"
        } elseif {$mark >= 70 && $mark < 80} {
            puts "Your Grade is C"
        } elseif {$mark >= 80 && $mark < 90} {
            puts "Your Grade is B"
        } elseif {$mark >= 90 && $mark < 95} {
            puts "Your Grade is A"
        } elseif {$mark >= 95 && $mark < 100} {
            puts "Your Grade is S"
        } 
    } else {
        puts "Your Grade is F"
    }
}