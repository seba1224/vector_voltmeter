import corr, time
from math import trunc
import struct
import numpy as np

IP = '192.168.1.12'
bof = 'voltmeter_bw8_2kh.bof'
channels = 8192
print('modified..')

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
"""
fpga.upload_program_bof(bof, 3000)
time.sleep(1)
"""
#fpga.write_int('acc_len', 10)
#fpga.write_int('adc0_delay', 1)
#fpga.write_int('adc1_delay', 1)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)

bw = 67.5
freq = input("Freq to read [MHz]??")
data_filename = raw_input('filename?') 

df = bw/channels
index = trunc(freq/df)
print(index)

open(data_filename, 'w').close()
f = file(data_filename, 'a')

while(1):
    head = raw_input('tag for the measurements?')
    f.write(head)
    f.write('\n')
    for i in range(0, 50):
        A2 =  struct.unpack('>1Q', fpga.read('A2', 8 ,index ))
        B2 =  struct.unpack('>1Q', fpga.read('B2', 8 ,index ))
        AB_re =  struct.unpack('>1q', fpga.read('AB_re', 8 ,index ))
        AB_im =  struct.unpack('>1q', fpga.read('AB_im', 8 ,index ))
        f.write(str(A2[0]))
        f.write(';')
        f.write(str(B2[0]))
        f.write(';')
        f.write(str(AB_re[0]))
        f.write(';')
        f.write(str(AB_im[0]))
        f.write('\n')
    
    cont = raw_input('Again? (y/n)')
    if(cont == 'n'):
        break
    else:
        pass
    
f.close()






