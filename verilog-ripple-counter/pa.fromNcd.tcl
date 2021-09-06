
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name verilog-ripple-counter -dir "/opt/verilog/verilog-ripple-counter/planAhead_run_1" -part xc6slx16csg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/opt/verilog/verilog-ripple-counter/ripple_carry_counter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/opt/verilog/verilog-ripple-counter} }
set_property target_constrs_file "ripple_carry_counter.ucf" [current_fileset -constrset]
add_files [list {ripple_carry_counter.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/opt/verilog/verilog-ripple-counter/ripple_carry_counter.ncd"
if {[catch {read_twx -name results_1 -file "/opt/verilog/verilog-ripple-counter/ripple_carry_counter.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/opt/verilog/verilog-ripple-counter/ripple_carry_counter.twx\": $eInfo"
}
