proc unshift {myList arg} { 
    lreplace $myList 0 $arg
    return $myList
}

set myList {a b c d e}
puts [unshift $myList z]


proc largelist {myList} {
  set max 1
  foreach i $myList { 
    if { $i > $max } {
      set max $i
    }
  }
  puts "max is = $max"
}

set myList {a b c d e}
puts [largelist $myList ]