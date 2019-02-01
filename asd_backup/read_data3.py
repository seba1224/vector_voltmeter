import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import ipdb

##para ahora_si, att_val =[10,15,20,25,30,35,40,45,50,55,60,65,70,75,80]

def read_data(file_name, att_val):
    att_val = att_val.astype(np.float) #la salida de save_data3 es con strings
    data = np.array(pd.read_csv(file_name))[:,0]
    size = len(att_val)
    data_a2 = np.zeros([size, 1000])
    data_b2 = np.zeros([size, 1000])
    data_ab_re = np.zeros([size, 1000])
    data_ab_im = np.zeros([size, 1000])
    
    power_a_avg = np.zeros(size)
    power_a_std = np.zeros(size)
    power_b_avg = np.zeros(size)
    power_b_std = np.zeros(size)
    ang_avg = np.zeros(size)
    ang_std =np.zeros(size)

    for j in range(0, size):
        a2 = np.zeros(1000)        
        b2 = np.zeros(1000)
        ab_re = np.zeros(1000)
        ab_im = np.zeros(1000)
        for i in range(0,1000):
            aux = map(int, data[i+j*1000].split(';'))   
            #print(i)
            a2[i] = aux[0]
            b2[i] = aux[1]
            ab_re[i] = aux[2]
            ab_im[i] = aux[3]
        data_a2[j, :] = a2
        data_b2[j, :] = b2
        data_ab_re[j, :] = ab_re
        data_ab_im[j, :] = ab_im
        
        power_a_avg[j] = np.mean(10*np.log10(a2+1.0))
        power_a_std[j] = np.std(10*np.log10(a2+1.0))
        power_b_avg[j] = np.mean(10*np.log10(b2+1.0))
        power_b_std[j] = np.std(10*np.log10(b2+1.0))
        ang_avg[j] = np.mean(np.rad2deg(np.arctan2(ab_im, ab_re)))
        ang_std[j] = np.std((np.rad2deg(np.arctan2(ab_im, ab_re))))
        #print(j)
    power_avg = power_b_avg - power_a_avg
    power_std = power_b_std + power_a_std
    
    fig = plt.figure()
    ax1 = fig.add_subplot(221)
    ax2 = fig.add_subplot(222)
    ax3 = fig.add_subplot(223)
    ax4 = fig.add_subplot(224)
    
    #ax1.set_title('power avg')
    ax1.set_ylabel('Avg power ratio[dB]')
    ax1.set_xlabel('Tested power ratio [dB]')
    ax1.grid()
    ax1.plot(att_val, power_avg, '-*')

    #ax2.set_title('power std')
    ax2.set_ylabel('SD $\sigma$ power ratio')
    ax2.set_xlabel('Tested power ratio [dB]')
    ax2.grid()
    ax2.plot(att_val, power_std, '-*')
    
    #ax3.set_title('angle avg')
    ax3.set_ylabel('Avg angle diff ['+u'\xb0'+']')
    ax3.set_xlabel('Tested power ratio [dB]')
    ax3.grid()
    ax3.plot(att_val, ang_avg, '-*')

    #ax4.set_title('angle std')
    ax4.set_ylabel('SD $\sigma$ angle diff ['+u'\xb0'+']')
    ax4.set_xlabel('Tested power ratio [dB]')
    ax4.grid()
    ax4.plot(att_val, ang_std, '-*')

    plt.show()
    #ipdb.set_trace()
    return [data_a2, data_b2, data_ab_re, data_ab_im]


