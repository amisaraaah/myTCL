set F [open "bankLog.txt" r]
set totalAmt 0
while {[gets $F data] >= 0} {
    #regexp {^([WR])\s([0-9]+)$} $data main transType amt
    #puts "the TT is $transType"
    #puts "the amount is $amt"
    #puts $data
    #regexp {^[WR]} "W aw" fm;
        if {[regexp {^([DW])\s([0-9]+)$} $data fm transType amt]} {
                if {![string compare -nocase $transType "D"]} {
                    set totalAmt [expr $totalAmt + $amt]
                    puts "$transType add $amt"
                    puts $totalAmt
                }
                if {![string compare -nocase $transType "W"]} {
                    set totalAmt [expr $totalAmt - $amt]
                    puts "$transType sub $amt"
                    puts $totalAmt
                }
        }
    
}
puts $totalAmt 