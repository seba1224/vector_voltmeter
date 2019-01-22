from func_test import plot_data
import corr, time

IP = '192.168.1.12'
bof = 'bom_dia_2019_Jan_21_1614.bof'
#channels = 16384 #esto esta asi para el codigo de pruebas
channels = 8192


fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(1)
fpga.write_int('acc_len', 2**10)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)
fpga.write_int('acc_rst', 1)
fpga.write_int('acc_rst', 0)

## carga el bof desde el pc a la roach pero no queda en la memoria de la roach ie no puedo usar las funciones de func_roach



#plot_data('fpga', 1000) 
plot_data(fpga, channels)


