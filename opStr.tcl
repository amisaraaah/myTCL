#operators
puts [expr sin([expr 3.1415/2])]
puts [expr abs(-1.20)]
puts [expr cos([expr 3.1415/2])]
puts [expr cosh(135)]
puts [expr sin(90)]

#string
set a "hello"
set b "Hello"
set c "hello"
set v "zone"
puts [string compare $a $b] ; # 1 (a)hello after (b)Hello 
puts [string compare $a $v] ; # -1 (a)hello before (v)zone 
puts [string compare $a $c] ; # 0 cuz same
set st "hello my name is ami sarah maria"
puts "length of this [string length $st]\n"
set thing "i"
puts [string first $thing $st]
#puts [string first "n" $st]
puts [string last "h" $st]
puts [string index $st 21]
puts [string range $st 19 end]
#glob style
set x [string match "*ami*" $st]
puts $x
lappend st i got added later
puts $st
lappend st "this will be a single elemnt"
puts $st
#regular expression
#nocase − Used to ignore case.
#indices − Store location of matched sub patterns instead of matched characters.
#line − New line sensitive matching. Ignores the characters after newline.
#start index − Sets the offset of start of search pattern.
set y "Tcl \nTutorial"
regexp -nocase -start 4 -line -- {([A-Z]*.([A-Z]*))} $y a b 
puts $a
puts $b
set rgex "0xa90f"
regexp {^0x?[A-Fa-f0-9]{1,4}|[0-9]+$} $rgex result
puts $result
regsub -all ami {ami is a good girl ami is also a smart girl} {sarah maria} result
puts $result
regsub -all {[0-9]+} {hel2345lo 2314i5 a5m g134oing to 23remove a76ll 1324num254bers 12345in64 th34is} {} result
puts $result
#split command
set v {.c.t.www.apple.fire...ryt.key.}
puts [split $v .]
set k "you?are>@cute>baby!wow"
puts $k
puts [split $k {?>!}]
#join
set stuff "{} book pencil brain {}"
puts [join $stuff { ? ? ? }]