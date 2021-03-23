set numstring 12,45,743,24,6,4
set F [open "Numbers_1.txt" a+] 
    puts $F $numstring
close $F
set F [open "Numbers_1.txt" r]
while {[gets $F data] >= 0} {
    set myList [split $data ,]
    set finalList [lsort $myList]
}
puts $finalList