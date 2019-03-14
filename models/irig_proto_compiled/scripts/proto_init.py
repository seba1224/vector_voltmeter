import corr, time
import numpy as np
import struct
import matplotlib.pyplot as plt

"""
nombre de los registros, porsiaca
hrd_rst ---->   resetea las mfs
cal ------>     permite la calibracion de la hora
irig_pos_id---> da la comparacion con la duracion de pos_id
irig_1 ---->    da la comparacion con la duracion del 1 irig
irig_0 ---->    idem
rst_gpio-->     resetea la medicion de las brams del gpio
en_gpio--->     permite la medicion de las brams del gpio
rst_lectures--> resetea la medicion de las brams de  estados 
en_lectures---> permite la medicion de las brams de estados
sel_index --->  permite elegir que direcciones se le entregan a la 2da mfs
                1 vienen de index, 0 de la 1era mfs
index --->      entrega la direccion que se quiere ver
read_ind_dir--> estado con la respuesta de la 2da mfs ante un indice
rst_brams-->    reset al bram que guarda la hora
en_brams--->    permite la medicion de la hora
state_parse_reg-->  reg con el estado de la 1era mfs
state_parse_reg1--> reg con el estado de la 2da mfs
1st_time-->     reg con el valor de la calibracion


nombre de las brams
data_gpio
state_parse
aux
state_read
time --> tiempo actual de la roach
"""
IP = '192.168.1.12'
bof = 'prototype.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(3)

###inicializacion de variables importantes

fpga.write_int('reg_wait', 500) #cuanto tiene que durar 1 para que sea considerado un dato
#estamos usando irigA ie cada dato dura 1ms y la frec de la fpga es 125mhz
T = 10**-3
fs = 125.*10**6
sec_fact = 0.75
irig_pos_id = 0.8*T*fs*sec_fact
irig_1 = 0.5*T*fs*sec_fact
irig_0 = 0.2*T*fs*sec_fact
frec_fpga = 125*10**6
fpga.write_int('comparer', frec_fpga)
fpga.write_int('irig_pos_id', irig_pos_id)
fpga.write_int('irig_1', irig_1)
fpga.write_int('irig_0', irig_0)
fpga.write_int('sel_ind',0)

#otras variables
fpga.write_int('reset_bram',1)
fpga.write_int('reset_bram',0)
fpga.write_int('rst_lectures',1)
fpga.write_int('rst_lectures',0)
fpga.write_int('rst_gpio',1)
fpga.write_int('rst_gpio',0)
fpga.write_int('hrd_rst', 1)
time.sleep(1)
fpga.write_int('hrd_rst', 0)









def save_gpio_data(filename):
    fpga.write_int('rst_gpio', 1)
    fpga.write_int('rst_gpio', 0)
    fpga.write_int('en_gpio',1)
    open(filename, 'w').close()
    f = file(filename, 'a')
    raw_data = fpga.read('data_gpio', 2**15, 0)
    f.write(raw_data)
    f.close()
    fpga.write_int('en_gpio', 0)
    print('ready')



def read_gpio(n_lectures):
    """reads and plot the gpio data"""
    n_lectures_char = str(n_lectures/8)
    #fpga.write_int('constant', const)
    fpga.write_int('rst_gpio',1)
    fpga.write_int('rst_gpio',0)
    fpga.write_int('en_gpio', 1)
    data_in = struct.unpack('>'+n_lectures_char+'B', fpga.read('data', 2**15, 0))       
    arreglo = np.zeros(int(n_lectures_char))
    for i in range(len(parse_input)):
        aux = bin(parse_input[i])[2:].zfill(8)
        for j in range(8):
            arreglo[8*i+j] =aux[j]
    fpga.write_int('en_gpio', 0)
    plt.plot(arreglo[:3000])
    plt.show()


def read_state_fsm(filename1, filename2, filename3):
    fpga.write_int('hrd_rst',1)
    fpga.write_int('hrd_rst',0)
    fpga.write_int('cal',1)
    fpga.write_int('cal',0)
    fpga.write_int('rst_lectures',1)
    fpga.write_int('rst_lectures',0)
    fpga.write_int('en_lectures', 1)
    time.sleep(2)
    fpga.write_int('en_lectures', 0)
    open(filename1, 'w').close()
    f = file(filename1, 'a')
    raw_data = fpga.read('state_parse', 2**15)
    f.write(raw_data)
    f.close()
    open(filename2, 'w').close()
    f = file(filename2, 'a')
    raw_data = fpga.read('state_read', 2**15)
    f.write(raw_data)
    f.close()
    open(filename3,'w')
    f = file(filename3, 'w').close()
    raw_data = fpga.read('aux', 2**15)
    f.write(raw_data)
    f.close()
    print 'listooo'


def get_time(filename):
    fpga.write_int('reset_bram',1)    
    fpga.write_int('reset_bram',0)
    fpga.write_int('en_bram', 1)
    open(filename, 'w').close()
    f = file(filename, 'a')
    raw_data = fpga.read('time', 2**13)
    f.write(raw_data)
    f.close()
    

reg_bitsize = 128
addr = 2**11
n_lectures = reg_bitsize*addr
#read_gpio(n_lectures)
gpio_file = 'gpio_file'
time_file = 'time_file'
fsm1 = 'fsm1_file'
fsm2 = 'fsm2_file'
aux_file = 'aux_file'


