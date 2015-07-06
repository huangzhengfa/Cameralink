# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z030fbg676-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.cache/wt [current_project]
set_property parent.project_path /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/subhagato/Codes/smartheadlight_fpga/CameraLinkToAXI_IP
  /home/subhagato/Codes/smartheadlight_fpga/hls_ips
} [current_project]
add_files /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_cameralink_to_axis_0_0/ip/v_vid_in_axi4s_0/v_vid_in_axi4s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_cameralink_to_axis_0_0/ip/v_vid_in_axi4s_0/v_vid_in_axi4s_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_axis_dwidth_converter_0_0/design_1_axis_dwidth_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/ipshared/xilinx.com/hls_synchr_strm_v1_0/77a39e34/constraints/hls_synchr_strm_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/ipshared/xilinx.com/hls_threshold_v1_0/0e3d4740/constraints/hls_threshold_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_ila_0_1/ila_v5_0/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/ip/design_1_ila_0_1/design_1_ila_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/ipshared/xilinx.com/hls_cropping_strm_v1_0/3027659e/constraints/hls_cropping_strm_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/Cameralink_deca.xdc
set_property used_in_implementation false [get_files /home/subhagato/Codes/smartheadlight_fpga/CameraLinkTest_backup/CameraLinkTest.srcs/sources_1/bd/design_1/Cameralink_deca.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file design_1_wrapper.hwdef }
synth_design -top design_1_wrapper -part xc7z030fbg676-1 -flatten_hierarchy none
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }