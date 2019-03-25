import struct
import numpy as np
import ipdb

def parse_gpio(filename, frec_mhz_fpga):
    reg_bitsize = 128
    addr = 2**11
    fr = file(filename, 'r')
    n_lectures = reg_bitsize*addr
    n_lect_char = str(n_lectures/8)
    parse_input = struct.unpack('>'+n_lect_char+'B', fr.read(n_lectures))
    fr.close()
    array = np.zeros(len(parse_input)*8)
    #ipdb.set_trace()
    for i in range(len(parse_input)):
        aux = bin(parse_input[i])[2:].zfill(8)
        #print i
        for j in range(8):
            array[8*i+j] = aux[j]
    t_ms = np.arange(0, len(array))/(frec_mhz_fpga*10.**3)
    return [array, t_ms]

    
