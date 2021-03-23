proc dup {data} {
	set size [llength $data]
	set k 0
	for {set i 0} {$i<$size} {incr i} {
		for {set j [expr {$i+1}]} {$j<$size} {incr j} {
			if {[lindex $data $i] eq [lindex $data $j]} {
				lappend duplicate [lindex $data $i]
				lappend location $i
			}
		}
	}
	return [list $duplicate $location] 
}

proc del {content} {
	set uniqueList [lsort -unique $content]
	return $uniqueList
}

set list "2 3 4 6 4 2"
set data [dup $list]
set duplicate [lindex $data 0]
set location [lindex $data 1]
puts "Duplicate elements are: $duplicate"

set data_clean [del $list]
puts "New list: $data_clean"