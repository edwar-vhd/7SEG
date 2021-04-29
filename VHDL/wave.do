onerror {resume}
quietly WaveActivateNextPane {} 0
radix -binary-showbase

add wave -noupdate -divider Input_7_segment
add wave -noupdate -color "coral" -label In_Display /Display_7seg_tb/DUT/segm_in

add wave -noupdate -divider Output_character
add wave -noupdate -color "green yellow" -label Out_Display /Display_7seg_tb/DUT/segm_out