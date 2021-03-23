set months(Jan) 01
set months(Feb) 02
set months(Mar) 03
set months(Apr) 04
set months(May) 05
set months(xxx) {i am a wrong item}
puts [array size months]
puts $months(xxx)
puts [array names months]
#parray function
parray months
#foreach loop
foreach item [array names months] {
    puts "month name: $item   month number: $months($item) "
}
set codes(0) "A"
set codes(1) "B"
set codes(2) "C"
set codes(3) "D"
set codes(4) "E"
#print with number index
for {set i 0} {$i < [array size codes]} {incr i} {
    puts $codes($i)
}
parray codes


