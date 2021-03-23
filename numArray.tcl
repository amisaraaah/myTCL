puts "enter 5 nums:"
for { set i 0}  {$i < 5} {incr i} {
    gets stdin val
    set numArr($i) $val
}
foreach i [array names numArr] {
    if {!($numArr($i) % 2 == 0)} {
        unset numArr($i)
    }
}
puts "the elements after removing odd numbers are:"
parray numArr

#foreach i [array names numArr] {
#    puts $numArr($i)
#}
