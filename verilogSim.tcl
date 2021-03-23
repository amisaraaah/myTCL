set verilogFiles [glob *.v]
if {$verilogFiles != []} {
    puts [eval exec {vlib work}]
    puts [eval exec {vmap work}]
    #compilation
    puts "\nCompiling verilog files..."
    foreach file $verilogFiles {
        if {[regexp {^(.*)\.v$} $file fm name]} {
            if {[catch {eval exec {vlog $file -l compile_$name.log}} errmsg] } {
                puts "COMPILATION of $fm FAILED!"
            } else {
                puts "\[PASS]$fm"
            }
        }
    }
    puts "Moving to reports..."
    #moving compilation reports
    set logs [glob compile_*.log]
    file mkdir reports
    foreach f $logs {
        file rename -force $f ./reports/$f
    }
    #simulating test benches
    puts "\nSimulating Testbenches..."
    set tbFiles [glob test*.v]
    foreach tb $tbFiles {
        if {[regexp {^(.*)\.v$} $tb fm name]} {
            set command "vsim -c work.$name -do \"do \[run -all]\[write transcript]\[q -f]\" -l sim_$name.log"
            if {[catch {exec {*}$command} errmsg]} {
                puts "SIMULATION OF $tb FAILED!"
            } else {
                puts "\[PASS]$tb"
            }
        }
    }
    #moving simulation reports 
    puts "Moving to reports/simulationReports..."
    set logs [glob sim_*.log]
    file mkdir reports/simulationReports
    foreach f $logs {
        file rename -force $f ./reports/simulationReports/$f
    }
    puts "Done! \nCheck reports folder for compilation and simulation reports."
} else {
    puts "File not found"
}

