package require cmdline

set parameters {
    {mask.arg ""   "masks"}
    {matrix.arg ""   "matrices"}
    {dump.arg "" "yaml file to dump"}
    {module.arg "" "module name"}
}


set usage "-mask for masks, -matrix for matrices, -dump for dumping the result and -module to specify module"

if {[catch {array set options [cmdline::getoptions ::argv $parameters $usage]}]} {
    puts [cmdline::usage $parameters $usage]
} else {
    parray options
}
#puts [array get options]

set masks [split $options(mask)]
set matrices [split $options(matrix)]


# converts binary string to 32-bit int
# x is little-endian
proc string_to_int x {
    set result_id 0
    binary scan [binary format b32 $x] i* result_id
    return $result_id
}

proc to_little_endian x {
    return [string reverse $x]
}




create_project name top -force


set mod_name $options(module)


add_files [glob *.sv]

import_files -fileset sim_1 [get_files]
set_property top "$mod_name\_testbench" [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]

set_property -name {xsim.simulate.runtime} -value {0} -objects [current_fileset -simset]
update_compile_order -fileset sim_1

launch_simulation

restart
 
#  first two arguments are .yaml file and module name
for {set i 0} {$i < [llength $matrices]} {incr i} {
    set  index [lindex $matrices $i]
    set obj [get_object "inputs\[$i\]"]

    set_value $obj $index
    puts "Obj $obj"
    puts "Index $index"
}

#  first two arguments are .yaml file and module name
for {set i 0} {$i < [llength $masks]} {incr i} {
    set  index [lindex $masks $i]
    set obj [get_object "inputs_mask\[$i\]"]

    set_value $obj $index
    puts "Obj $obj"
    puts "Index $index"
}

run all

set ct  [current_time]



current_scope "$mod_name\_testbench"



set result [get_value -radix bin [get_object -regexp ".*o_tdata.*"]]

set result_cropped [string reverse [string range $result 0 [expr {[string length $result] - 2 }]]]


set result_id [string_to_int $result_cropped]

set chan [open $options(dump) a]


puts $chan "- nnz: $result_id"

puts $chan "  time: $ct"

current_scope "$mod_name\_testbench"
set profiling_values [get_objects -r -regexp ".*profiling.*"]

foreach p $profiling_values {
    set value [get_value -radix dec $p]
    # set value_decoded [string_to_int [to_little_endian $value]]
    puts $chan "  $p: $value" 
}


if {[llength $matrices] > 0} {
    
    puts $chan "  test_matrices:"

    for {set i 0} {$i < [llength $matrices]} {incr i} {
        set  index [lindex $matrices $i]
        puts $chan "  - test_$index.mtx"
    }
} else {
    puts $chan "  test_matrices: null"
}

if {[llength $masks] > 0} {
    
    puts $chan "  test_masks:"

    for {set i 0} {$i < [llength $masks]} {incr i} {
        set  index [lindex $masks $i]
        puts $chan "  - test_$index.mtx"
    }
} else {
    puts $chan "  test_masks: null"
}


close $chan

close_sim

close_project