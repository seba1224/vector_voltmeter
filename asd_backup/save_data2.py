import corr, time
from math import trunc
import struct
import numpy as np

IP = '192.168.1.12'
bof = 'voltmeter_bw8_2kh.bof'
channels = 8192
fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.write_int('acc_len', 10)
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
tags = np.array([])
while(1):
    head = raw_input('tag for the measurements?')
    tags = np.append(tags, head)
    for i in range(0, 1000):
        AB_im =  struct.unpack('1Q', fpga.read('AB_im', 8 ,index*8 ))
        AB_re =  struct.unpack('1Q', fpga.read('AB_re', 8 ,index*8 ))
        A2 =  struct.unpack('>1Q', fpga.read('A2', 8 ,index*8 ))
        B2 =  struct.unpack('>1Q', fpga.read('B2', 8 ,index*8 ))
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


