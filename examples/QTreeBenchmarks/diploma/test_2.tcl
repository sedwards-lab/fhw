package require cmdline

set parameters {
    {mask.arg ""   "masks"}
    {matrix.arg "2"   "matrices"}
    {config.arg "" "config"}
    {module.arg "" "module name"}
}
#set option(l) 100
set usage "- A simple script to demo cmdline parsing"

if {[catch {array set options [cmdline::getoptions ::argv $parameters $usage]}]} {
    puts [cmdline::usage $parameters $usage]
} else {
    parray options
}
#puts [array get options]

set masks [split $options(mask)]

for {set i 0} {$i < [llength $masks]} {incr i} {
    set  index [lindex $masks $i]
    # set obj [get_object "inputs\[$i\]"]

    # set_value $obj $index
    # puts "Obj $obj"
    puts "Index $index"
}

puts $options(mask)
puts $options(matrix)