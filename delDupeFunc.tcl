#!/usr/bin/tclsh
#Develop a TCLfunction which must delete the duplicate elements from the list.

set initial_list [list "alpha" "beta" "c" "delta" "c" "alpha" "echo" "echo"] 
puts "The given list is : $initial_list"
proc duplicate_deletion {list} {
  set updated_list {}
  foreach item $list {
    if {[lsearch $updated_list $item] < 0} {
      lappend updated_list $item
    }
  }
  return $updated_list
}

puts "The updated list is: [duplicate_deletion {alpha beta c delta c alpha echo echo}]"