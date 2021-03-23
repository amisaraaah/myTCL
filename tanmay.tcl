puts "Enter the no of people"
set no [gets stdin]
for {set i 0} {$i<$no} {incr i} {
puts "Enter name: ";
set in1 [gets stdin]
lappend name $in1
puts "Enter age: ";
set in2 [gets stdin]
lappend age $in2
puts "Enter marks: ";
set in3 [gets stdin]
lappend marks $in3
}
foreach h1 $name h2 $age h3 $marks {
    lappend data [lappend h1 $h2 $h3];
}
puts "Unsorted $data";

set data [lsort $data];
puts "Sorted : $data";