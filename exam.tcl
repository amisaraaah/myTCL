#set url "W 100"
#regexp {^htt[p|ps]://?www..*\.com:.*^} $url result
#regexp {^W\s([0-9]+)$} $url main result 
#puts $result
#set data "W 100"
#regexp {^([WR])\s([0-9]+)$} $data main transType amt
#puts $transType
#set A "end"
#if {[regexp {^.*\s?(begin|end(case|module)?)$} $A m]} { 
#    puts $m
#}
#proc design_file_check {verilogFile} {
#    return "this is $verilogFile"
#} 
#puts [design_file_check adder.v]



set f "for(k=0;k<8;k=k+1)"
            if {![regexp {^(.*)?(for|if|else if|case)(\s+)?\(.*\)} $f] } {
                if {![regexp {^.*;$} $f]} {
                    puts "Error"
                }
            }