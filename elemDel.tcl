puts "enter 10 nums: (del start and end index first) "
for { set i 0}  {$i < 10} {incr i} {
    gets stdin val
    set numArr($i) $val
}
set start [expr $numArr(0) + 2]
set end [expr $numArr(1) + 2]
unset numArr(0)
unset numArr(1)
puts "the elements are"
for { set j $start }  { $j < $end}  { incr j } {
    unset numArr($j)
}
parray numArr
#foreach i [array names numArr] {
#for { set index 0 }  { $index < [array size numArr] }  { incr index } {
#    puts $numArr($index)
#}
