# any one should be a float to print float ans
puts [expr 2/9.0]
#prints a decimal
puts [expr 2/9]
#example scripts
# 10 + 100 + 10*100
set x [expr [set a 10] + [set b 100] + $a*$b]
puts $x
# 2 * 2*3 + 2*2+2*3
set y [expr [set a 2]*[set b [expr $a*3]] + [expr 2*$a+$b]]
puts $y
#basic variable examples
set b 10
puts $b; #10
set a b
puts $a; #b
set a $b
puts $a; #10
set "college name" vit
puts "college name" ; #vit
set a $b+$b+$b
puts $a ; #10+10+10      variables are always stored as strings
set a $b.3 ; #10.3
puts [expr $a+0.2]; #10.5
if 0 {
set a $somenew;  #no such variable somenew
puts $a 
}
#removing variables
set a 99
set b 63
set c 3345
puts "$a $b $c"
unset a b c
# puts "$a $b $c" wont work anymore (no such variable)

#increment command
set kk 50
incr kk ; puts $kk ; # 51
incr kk 10 ; puts $kk ; # 61

#append command
set msg "" ; #append will create this if not present
foreach n {1 2 3 4 5} {
    append msg "$n sq is [expr $n*$n]\n"
}
puts $msg

