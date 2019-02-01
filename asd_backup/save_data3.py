import numpy as np
import struct
def save_data(fpga):
    chann = input('channel to read?')
    data_filename= raw_input('filename?')
    open(data_filename, 'w').close()
    f = file(data_filename, 'a')
    tags = np.array([])
    f.write('esta linea la debiese eliminar pandas...')
    f.write('\n')
    while(1):
        head = raw_input('tag for the measurments?')
        tags = np.append(tags, head)
        for i in range(0, 1000):
            A2 = struct.unpack('>1Q', fpga.read('A2', 8, chann*8))
            B2 = struct.unpack('>1Q', fpga.read('B2', 8, chann*8))
            AB_im = struct.unpack('>1q', fpga.read('AB_im', 8, chann*8))
            AB_re = struct.unpack('>1q', fpga.read('AB_re', 8, chann*8))
            f.write(str(A2[0]))
            f.write(';')
            f.write(str(B2[0]))
            f.write(';')
            f.write(str(AB_re[0]))
            f.write(';')
            f.write(str(AB_im[0]))
            f.write('\n')
        cont = raw_input('Again? ')
        if(cont=='n'):
            break
        else:
            pass
    f.close()
    return tags
