import corr, time
import os
import matplotlib.pyplot as plt
from meas_functs_4096 import plot_data

IP = '192.168.1.12'
bof = 'dec2_4096.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)
fpga.write_int('acc_len', 2**4)
fpga.write_int('cnt_rst',1)
fpga.write_int('cnt_rst',0)

frec_init = 1080./16./4*3
frec_end = 1080./16.
plot_data(fpga, 2048, frec_init, frec_end)
