from asd import plot_data
import corr, time

IP = '192.168.1.12'
bof = 'buenas_tardes_2019_61_1731.bof'
channels = 16384 #esto esta asi para el codigo de pruebas



fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
fpga.write('acc_len', 32)
fpga.write('cnt_rst', 1)
fpga.write('cnt_rst', 0)
fpga.write('acc_rst', 1)
fpga.wirte('acc_rst', 0)
## carga el bof desde el pc a la roach pero no queda en la memoria de la roach ie no puedo usar las funciones de func_roach



#plot_data('fpga', 1000) 
plot_data(fpga, channels)


