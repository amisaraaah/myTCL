puts "hi blah bla"
puts yuo
puts [expr 3+6]
set msg my\ \sdgadfgame\ \phb
puts $msg
#puts expr 4*5
#shifts 3 positions  0001 is 1000
puts [expr 1<<3] 
#output is 110
set ami 100
puts [expr $ami + 10]
#print money
set money \$50
#error can't read "50": no such variable
#set fakemoney $50
#puts $fakemoney

#deletes the previous char  output: h ai
puts "hi\b am\bi"
#prints like new para ?
puts "i actually \fdont kno\fwhat is goin \fon \fover here" 
#deleted hey yo
puts "hey yo\r i am ami"
#horizontal and vertical tabs
puts "wow \t wow \v wow"
puts "thing"
puts "\vanother \nwow"
# it printed \} no way to print } alone i guess also \n doesnt work
set mm {i want to print all \n this things ! \} 2 \ / he said " hello " # $ % ;} 
puts $mm
#this is fine
#puts "hi" #kkk
#cant cuz error: wrong # args: should be "puts ?-nonewline? ?channelId? string"
puts "hi ami "; #comment is fine after ;
# dont put numbers, @, % punctuation
set {$_myv a$r} [expr 4**2] ; puts ${$_myv a$r}; #this is fine

if 0 {
    sdsaf
    werf   put a if condition with 0
    rynb
            it wont print this crap 
        2351
        &*#$
        thank you for studying perl basics 
        432    
    }