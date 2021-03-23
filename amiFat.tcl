# Write a TCL script which will read a mathematical sentence from the user, evaluate the
# result, and print the result to the screen. For example, if the user types 2 + 4 = the
# program will output 6. The result should be written in output file. All formulas will be
# given in the format Operand_1 Operator Operand_2 =
# The characters in the formulas may or may not be separated by white space. The
# operators that must be supported are: +, - , / , * , % .

puts "Enter the equation: "
gets stdin eqn
set doCalc 0
if {[regexp {^([0-9]+)(\s+)?([+-/*%])(\s+)?([0-9]+)(\s+)?=?(\s+)?$} $eqn fm op1 n operator s op2]} {
    set doCalc 1
    if {![string compare $operator "+"]} {
        puts "Adding..."
    } elseif {![string compare $operator "-"]} {
        puts "Subtracting..."
    } elseif {![string compare $operator "*"]} {
        puts "Multiplying..."
    } elseif {![string compare $operator "/"]} {
        puts "Dividing..."
    } elseif {![string compare $operator "%"]} {
        puts "Finding Remainder..."
    } else {puts "Operator not supported"}
}
# calculating result
if {$doCalc} {
    set result [expr $op1$operator$op2]
    puts "The ans is: $result"
    # writing to file
    set F [open "result.txt" w+] 
    puts $F "$op1 $operator $op2 = $result"
    puts "Check result.txt for output"
} else {
    puts "ERROR! Couldnt calculate the result..."
}

