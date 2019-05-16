copy implementation\system.bit ..\bit_files\testing3_2019_May_15_2148.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\testing3_2019_May_15_2148.bof
copy design_info.tab ..\bit_files\testing3_2019_May_15_2148.info
