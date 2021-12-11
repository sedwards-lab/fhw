    
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


set mod_name [lindex $argv 1]

# set mod_name "MAddAddAdd1"

add_files [glob *.sv]

import_files -fileset sim_1 [get_files]
set_property top "$mod_name\_testbench" [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]

set_property -name {xsim.simulate.runtime} -value {0} -objects [current_fileset -simset]
update_compile_order -fileset sim_1

launch_simulation

run all

set ct  [current_time]


set ptr_size 16


current_scope "$mod_name\_test"

# set mem_writes 0

# set objects [get_objects -r -regex ".*_mem.*"] 


# # arrays are iterated in reverse order, i.e. split_i[0] is indeed mem[255]
# foreach i $objects {
    
#     set values [get_value -radix bin $i]
#     set split_i [split $values ","]
#     set done 0
    
#     foreach j $split_i {
#         if {($j == [string repeat "X" [string length $j]]) && $done != 1} {
#             continue
#         } elseif {($j == [string repeat "X" [string length $j]]) && $done != 1} {
#             set done 1
#         } else {
#             incr mem_writes    
#         }
#     } 
# }


# puts "Number of mem_writes: $mem_writes"

# set addr_objects [get_objects -r -regex ".*_address.*"]

# puts "addr_objects: $addr_objects"

# set mem_writes_alt 0

# foreach i $addr_objects {
#     set value [get_value -radix bin $i]
#     set value_decoded [string_to_int [to_little_endian $value]]
#     set mem_writes_alt [expr {$mem_writes_alt + $value_decoded + 1}]
# }

# puts "mem_writes_alt: $mem_writes_alt"

# set output_mem [split [get_value -radix bin [get_object -r "*memMergeIn_QTree_Int_dbuf_mem*"]] ","]

set result [get_value -radix bin [get_object -regexp ".*_dout.*"]]

set result_cropped [string reverse [string range $result 0 [expr {[string length $result] - 2 }]]]

# binary scan [binary format b32 $result_cropped] i* result_id

set result_id [string_to_int $result_cropped]

puts "result_id: $result_id"

# set mem_size [llength $output_mem]

# puts "mem_size: $mem_size"

# set fp [open "answer" r]
# set file_data [read $fp]
# close $fp

# set check_data [split $file_data " "]

# set test 1
# set next $result_id
# set check_var_id 0

# proc dfs_check {vars current_var_id check_vars} {

#     global check_var_id
#     global ptr_size

#     set node [lindex $vars [expr {[llength $vars] -1 -$current_var_id}]]
#     set node_type [string range $node [expr {[string length $node] - 2}] [expr {[string length $node] - 1}]]

#     set check_var [lindex $check_vars $check_var_id]
#     set check_var_type [string range $check_var [expr {[string length $check_var] - 2}] [expr {[string length $check_var] - 1}]]
    

#     if {$node_type == $check_var_type} {
    
#         if {$node_type == "10"} {
#             set br [string_to_int [to_little_endian [string range $node 0 [expr {$ptr_size - 1}]]]]
#             set bl [string_to_int [to_little_endian [string range $node $ptr_size [expr {2 * $ptr_size - 1}]]]]
#             set tr [string_to_int [to_little_endian [string range $node [expr {2 * $ptr_size}] [expr {3 * $ptr_size -1}]]]]
#             set tl [string_to_int [to_little_endian [string range $node [expr {3 * $ptr_size}] [expr {4 * $ptr_size -1}]]]]

#             set check_var_id [expr {$check_var_id + 1}]

#             return [expr {[dfs_check $vars $tl $check_vars] && [dfs_check $vars $tr $check_vars] && [dfs_check $vars $bl $check_vars] && [dfs_check $vars $br $check_vars]}]
#         } elseif {$node_type == "00"} {
#             set check_var_id [expr {$check_var_id + 1}]
#             return 1
#         } elseif {$node_type == "01"} {
#             set node_value [string range $node 8 31]
#             set check_var_value [string range $check_var 0 31]

#             set check_var_id [expr {$check_var_id + 1}]

#             if {$node_value == $check_var_value} {
#                 return 1
#             } else {
#                 return 0
#             }
#         } else {
#             return 0
#         }
#     } else {
#         return 0
#     }
# }


# dfs here

# puts "result : [dfs_check $output_mem $next $check_data]"


set chan [open [lindex $argv 0] a]

puts $chan "$mod_name, [lindex $argv 2], [lindex $argv 3], [lindex $argv 4], [lindex $argv 5], $ct, $result_id, [lindex $argv 6]"

close_sim

close_project