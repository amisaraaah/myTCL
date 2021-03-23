#arrayname indexToInsert item1 item2
set l {thing1 thing2}
puts [linsert {1 2} 0 $l kkk ook] ; #{thing1 thing2} kkk ook 1 2
# 0 1 2 3
set x [list a {b c} e d] ; #a {b c} e d
puts $x
# {b c} is B  
puts [lreplace $x 1 2 B C]
set y [lappend x hmm woa] ; #a {b c} e d hmm woa
puts $y ; # 
#
puts [lrange $x 1 3] ; # {b c} e d
#prints index
puts [lsearch {here is a list} l*] ; #-1 if its not found // output: 3
#
puts [lindex {a b {c d e} f} 2] ; # c d e
#lmap
set op [lmap i {1 2 3 4 5} {expr {$i * $i}}]
puts $op
puts [lrange $op 2 3]

set l2 [list 1 2 3 4 5]
set l1 [list 0 9 8 7 6]
puts [lappend c [lindex $l1 1] [lindex $l2 1] ]
puts [lappend u $c]

puts [llength $op]