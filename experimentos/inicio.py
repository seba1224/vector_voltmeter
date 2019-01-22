from functs import Animated
import corr, time

IP = '192.168.1.12'
bof = 'bonjour_2019_Jan_21_1300.bof'
#channels = 16384 #esto esta asi para el codigo de pruebas
channels = 8192


fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(1)
fpga.write_int('acc_len', 32)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)
fpga.write_int('acc_rst', 1)
fpga.write_int('acc_rst', 0)


Animated(fpga, channels)
