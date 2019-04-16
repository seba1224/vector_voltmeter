import corr, time
import os
import matplotlib.pyplot as plt
from meas_functs import plot_data

###Se supone que el grafico tendria que ir de [51.97-62.1]MHz
IP = '192.168.1.12'
#bof = 'dec_2.bof'
bof = 'dec64_3nyq.bof'#'dec64.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)
fpga.write_int('acc_len', 2**4)
fpga.write_int('cnt_rst',1)
fpga.write_int('cnt_rst',0)


frec_init = 1080./16./2.
frec_end = 1080./16./4*3
plot_data(fpga, 32, frec_init, frec_end)



#plot_data(fpga, 32, 51.97, 62.1)



