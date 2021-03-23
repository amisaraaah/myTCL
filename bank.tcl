puts "enter number of transactions: "
gets stdin num
puts "Enter transactions: "
set F [open "bankLog.txt" a+] 
for { set count 1}  {$count <= $num} {incr count} {
    gets stdin someTran
    puts $F $someTran
}
close $F
set totalAmt 0
set F [open "bankLog.txt" r]
while {[gets $F data] >= 0} {
        if {[regexp {^([DW])\s([0-9]+)$} $data fm transType amt]} {
            if {![string compare -nocase $transType "D"]} {
                set totalAmt [expr $totalAmt + $amt]
            }
            if {![string compare -nocase $transType "W"]} {
                set totalAmt [expr $totalAmt - $amt]
            }
        }
}
close $F 
puts "Your total balance is \$$totalAmt \ncheck transactions in bankLog.txt"
