puts "Enter a divident: "
gets stdin num1
puts "Enter a divisor: "
gets stdin num2
set quo [expr $num1/$num2]
set rem [expr $num1%$num2]
puts "The quotient is $quo ; The remainder is $rem"