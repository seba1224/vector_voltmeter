#
# Created by System Generator     Sun May  5 21:12:42 2019
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {testing_cw}
    set DSPFamily {Virtex6}
    set DSPDevice {xc6vsx475t}
    set DSPPackage {ff1759}
    set DSPSpeed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {135.000135000135}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{testing_cw.vhd} -view All}
        {{testing.vhd} -view All}
        {{testing_cw.ucf}}
        {{testing_cw.xdc}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_9.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1e.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_0.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1efilt_decode_rom.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_7.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9filt_decode_rom.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_10.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_15.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_7.mif}}
        {{bmg_72_80ec4706477d97c1.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_15.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9filt_decode_rom.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6filt_decode_rom.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_7.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_9.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_0.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_10.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_0.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_0.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_15.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_7.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_9.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_15.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_9.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_11b79c4c0363d2c9COEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_10.mif}}
        {{fr_cmplr_v5_0_91f8d93ab4c57cc9COEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_4b60decb792efd1eCOEFF_auto0_10.mif}}
        {{/home/seba/Documents/Untitled_Folder/scripts/vector_voltmeter/models/dec2/part1_dec4/testing.slx}}
    }
    set TopLevelModule {testing_cw}
    set SynthesisConstraintsFile {testing_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
