import corr, time
import os
from measure_functs import plot_data
import matplotlib.pyplot as plt

IP = '192.168.1.12'
bof = 'buenos_dias_2019_Jan_16_1048.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)

plot_data(fpga, 16384/2)

plt.show()
