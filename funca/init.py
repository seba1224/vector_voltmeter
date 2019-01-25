from functs import plot_data
import corr, time

IP = '192.168.1.12'
bof = 'voltmeter_bw8_2kh.bof'
channels = 8192

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(1)
fpga.write_int('acc_len', 2**5)
fpga.write_int('adc0_delay', 1)
fpga.write_int('adc1_delay', 1)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)

## carga el bof desde el pc a la roach pero no queda en la memoria de la roach ie no puedo usar las funciones de func_roach



plot_data(fpga, channels)

