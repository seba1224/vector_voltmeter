import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


data = np.array(pd.read_csv('test_data'))[:,0]


att_val =np.array( [70, 10 ,15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 0])

data_a2 = np.zeros([17, 1000])
data_b2 = np.zeros([17, 1000])
data_ab_re = np.zeros([17, 1000])
data_ab_im = np.zeros([17, 1000])

power_a_avg = np.zeros(17)
power_a_std = np.zeros(17)
power_b_avg = np.zeros(17)
power_b_std = np.zeros(17)
ang_avg = np.zeros(17)
ang_std = np.zeros(17)

for j in range(0, 16):
    a2 = np.zeros(1000)
    b2 = np.zeros(1000)
    ab_re = np.zeros(1000)
    ab_im = np.zeros(1000)
    for i in range(0, 1000):
        aux = map(int, data[i+j*1000].split(';'))
        ab_im[i] = aux[0]
        ab_re[i] = aux[1]
        a2[i] = aux[2]
        b2[i] = aux[3]
    data_a2[j, :] = a2
    data_b2[j, :] = b2
    data_ab_re[j, :] = ab_re
    data_ab_im[j, :] = ab_im
    
    power_a_avg[j] = np.median(10*np.log10(a2+1.0))
    power_a_std[j] = np.std(10*np.log10(a2+1.0))
    power_b_avg[j] = np.median(10*np.log10(b2+1.0))
    power_b_std[j] = np.std(10*np.log10(b2+1.0))
    ang_avg[j] = np.median(np.rad2deg(np.arctan2(ab_im, ab_re)))
    ang_std[j] = np.std((np.rad2deg(np.arctan2(ab_im, ab_re))))
    
asd = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

power_avg = power_a_avg - power_b_avg
power_std = power_a_std + power_b_std

fig = plt.figure()
ax1 = fig.add_subplot(221)
ax2 = fig.add_subplot(222)
ax3 = fig.add_subplot(223)
ax4 = fig.add_subplot(224)

ax1.set_title('power avg')
ax1.plot(att_val[asd], power_avg[asd], '-*')

ax2.set_title('power std')
ax2.plot(att_val[asd], power_std[asd], '-*')

ax3.set_title('angle avg')
ax3.plot(att_val[asd], ang_avg[asd], '-*')

ax4.set_title('angle std')
ax4.plot(att_val[asd], ang_std[asd], '-*')

plt.show()
            









