copy implementation\system.bit ..\bit_files\roach2_tut_tge_2019_Mar_14_1313.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\roach2_tut_tge_2019_Mar_14_1313.bof
copy design_info.tab ..\bit_files\roach2_tut_tge_2019_Mar_14_1313.info
