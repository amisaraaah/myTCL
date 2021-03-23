proc design_file_check {verilogFile} {
    set modDefErr 1
    set lineCount 0
    set beginCtr 0
    set endCtr 0
    set noEndModule 1
    set noErrorFlag 1
    set semiColonListErr []
    set missingPorts []
    set portList []
    set definedList []
    set unknownPorts []
    if {![catch {set F [open $verilogFile r]} errmsg] } {
        puts "Checking..."
        while {[gets $F data] >= 0} {
            incr lineCount
            # module definition error
            if {[regexp {^module\s.*(\(?.*\))?\s*;$} $data]} {
                set modDefErr 0
            }
            # checking lines with missing semicolon - excluding special
            if {![regexp {^.*\s?(initial|always|(for|case|if|else if)(\s+)?\(.*\)|begin|end(case|module)?)$} $data] && $data != ""} {
                if {![regexp {^.*;$} $data]} {
                    set semiColonListErr [lappend semiColonListErr $lineCount]
                }
            }
            #portlist errors
            if {[regexp {^module\s.*\((.*)\);$} $data m ports]} { 
                set portList [split $ports ,]
            }
            if {[regexp {^input\s(.*);$} $data m defs]} {
                set definedList [split $defs ,]        
            }
            if {[regexp {^output\s+(wire|reg)?\s+?(.*);$} $data m n defs]} {
                set definedList [lappend definedList [split $defs ,]]     
            }
            # unbalanced begin end statement
            if {[regexp {^(.*\s)?begin$} $data ]} {
                incr beginCtr
            }
            if {[regexp {^end(case|function)?$} $data ]} {
                incr endCtr
            }
            # missing endmodule
            if {[regexp {^endmodule$} $data ]} {
                set noEndModule 0
            }
        }
        # 1. semicolon check
        if {[llength $semiColonListErr] != 0} {
            puts "* Missing semicolon in line(s): [join $semiColonListErr ,]"
            set noErrorFlag 0
        }
        # 2. module definition syntax
        if {$modDefErr} {
            puts "* Module Definition Incorrect ! Try to give module definition like: module moduleName(in1,in2,in3,out1,out2);"
            set noErrorFlag 0
        }
        # 3. missing port definitions
        foreach port $portList {
            if {[lsearch $definedList $port] == -1} {
                    set missingPorts [lappend missingPorts $port]
                }
        }
        if {[llength $missingPorts] != 0} {
            puts "* Missing Portlist Definitions ! Please specify input or output port: [join $missingPorts ,] "
            set noErrorFlag 0
        }
        # 4. port not declared but was used as input ot output port
        foreach port $definedList {
        if {[lsearch $portList $port] == -1} {
                set unknownPorts [lappend unknownPorts $port]
            }
        }
        if {[llength $unknownPorts] != 0} {
            puts "* Variable not defined in module definition but was used as input or output port! 
                            Add or Remove the following variables: [join $unknownPorts ,] "
            set noErrorFlag 0
        }
        # 5. checks if all begin statement has an end statement
        if {$beginCtr != $endCtr} {
            puts "* Unbalanced begin and end statements... Please close all begin statements with end statement"
            set noErrorFlag 0
        }
        # 6. checking if 'endmodule' is present
        if {$noEndModule} {
            puts "* 'endmodule' not found..."
            set noErrorFlag 0
        }
        if {$noErrorFlag} {
            puts "No Errors found! You're good to go!"
        }
    } else {
        puts "ERROR! $errmsg"
    }
}
puts "* * * Syntax Checker * * *\nEnter the Verilog File: "
gets stdin verilogFile
design_file_check $verilogFile