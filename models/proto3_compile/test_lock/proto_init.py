import corr, time
import numpy as np
import struct
import matplotlib.pyplot as plt


def hora(time):
    days = int(time/(24.*3600))
    hours =int((time%(24.*3600))/3600)
    minutes = int((time%(24.*3600)%3600)/60)
    secs = time%(24.*3600)%3600%60
    print(str(days)+'day'+str(hours)+':'+str(minutes)+':'+str(secs))


IP = '192.168.1.12'
bof = 'proto_lock2.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(3)

fpga.write_int('reg_wait', 500)  ##esto igual es harto...

T = 10**-2
fs = 125.*10**6
sec_fact = 0.75
irig_pos_id = 0.8*T*fs*sec_fact
irig_1 = 0.5*T*fs*sec_fact
irig_0 = 0.2*T*fs*sec_fact
frec_fpga = 100*10**6 #125*10**6
fpga.write_int('comparer', frec_fpga)
fpga.write_int('irig_pos_id', irig_pos_id)
fpga.write_int('irig_1', irig_1)
fpga.write_int('irig_0', irig_0)
fpga.write_int('sel_ind',0)
fpga.write_int('waiting_in_vain', 20)  #con estos vals ya no driftea tanto
fpga.write_int('threshold', 20)         #con estos vals ya no driftea tanto
fpga.write_int('top_count', 100)
fpga.write_int('bott_count', 100)



##otras variables

fpga.write_int('reset_bram',1)
fpga.write_int('reset_bram',0)
fpga.write_int('rst_lectures',1)
fpga.write_int('rst_lectures',0)
fpga.write_int('rst_gpio',1)
fpga.write_int('rst_gpio',0)
fpga.write_int('save_data',0)
fpga.write_int('frec_uplim', int(frec_fpga/100*1.005))  #en el modelo me equivoque al multiplicar por 100...
fpga.write_int('frec_downlim',int(frec_fpga/100*0.991))
fpga.write_int('hrd_rst', 1)
time.sleep(1)
fpga.write_int('hrd_rst', 0)

fpga.write_int('cal',1)
time.sleep(3)
fpga.write_int('cal',0)
print('start')
start = time.time()
while(1):
    unlock = fpga.read_int('unlock')
    if(unlock ==1):
        print('it last '+str(time.time()-start)+'secs locked')
        break
    else:
        pass


"""
while(1):
    unlock = fpga.read_int('unlock')
    if(unlock == 1):
        print('it last'+str(start-time.time()+'secs locked'))
        fpga.write_int('cal',1)
        time.sleep(1)
        fpga.write_int('cal',0)
        start = time.time()
    else:
        pass
"""

def prueba(frec_uplim, frec_downlim,thresh, waiting):
    fpga.write_int('threshold', thresh)
    fpga.write_int('waiting_in_vain', waiting)
    fpga.write_int('frec_uplim', int(frec_uplim))
    fpga.write_int('frec_downlim', int(frec_downlim))
    fpga.write_int('hrd_rst',1)
    fpga.write_int('hrd_rst',0)
    fpga.write_int('cal',1)
    fpga.write_int('cal',0)
    start = time.time()
    print('start')
    while(1):
        unlock = fpga.read_int('unlock')
        if(unlock==1):
            print('it last'+str(time.time()-start)+'secs locked')
            break
        else:
            pass
            
