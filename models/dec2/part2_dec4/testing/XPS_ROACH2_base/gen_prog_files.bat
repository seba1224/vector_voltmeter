copy implementation\system.bit ..\bit_files\testing_2019_May_13_1626.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\testing_2019_May_13_1626.bof
copy design_info.tab ..\bit_files\testing_2019_May_13_1626.info
