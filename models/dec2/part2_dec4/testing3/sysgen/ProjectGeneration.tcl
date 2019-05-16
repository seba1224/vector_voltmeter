#
# Created by System Generator     Wed May 15 21:47:07 2019
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {testing3_cw}
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
        {{testing3_cw.vhd} -view All}
        {{testing3.vhd} -view All}
        {{testing3_cw.ucf}}
        {{testing3_cw.xdc}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_14.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_5.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_6.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_3.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_7.mif}}
        {{bmg_72_80ec4706477d97c1.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_8.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_15.mif}}
        {{bmg_72_d1c80e28fd489b6f.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6filt_decode_rom.mif}}
        {{bmg_72_c4044a0cc7932d1b.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_11.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_0.mif}}
        {{bmg_72_44b6341b35b35a10.mif}}
        {{bmg_72_5e4d6e8669bb51b8.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_12.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_9.mif}}
        {{bmg_72_90b3d9cc777bd9da.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_2.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_1.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_4.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_13.mif}}
        {{fr_cmplr_v5_0_ca7ec58752e7cbe6COEFF_auto0_10.mif}}
        {{/home/seba/Documents/Untitled_Folder/scripts/vector_voltmeter/models/dec2/part2_dec4/testing3.slx}}
    }
    set TopLevelModule {testing3_cw}
    set SynthesisConstraintsFile {testing3_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create
