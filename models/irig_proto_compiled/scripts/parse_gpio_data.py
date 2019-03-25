
import struct
import matplotlib.pyplot as plt
import numpy as np

reg_bitsize = 128
addr = 2**11
data_filename = 'gpio_data'
fr = file(data_filename, 'r')

n_lectures = reg_bitsize*addr
n_lect_in_char = str(n_lectures/8)
parse_input = struct.unpack('>'+n_lect_in_char+'B', fr.read(n_lectures))

fr.close()
#plt.plot(parse_input)
#plt.show()

"""
for i in range(reg_bitsize*addr):
    parse_data = struct.unpack('>100h', fr.read(1))
"""    


#para dejarlo en binario hacemos..

arreglo = np.zeros(len(parse_input)*8)

for i in range(len(parse_input)):
    aux = bin(parse_input[i])[2:].zfill(8)
    for j in range(8):
        arreglo[8*i+j] =aux[j]

t = np.arange(0,len(arreglo))/(125.*10**3)  #esta es la frec q dejo el franco el otro dia
plt.plot(t, arreglo)
plt.xlabel('ms')
plt.show()

 




 
