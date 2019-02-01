import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

#data = np.array(pd.read_csv('moredata_10acc.txt'))[:, 0 ]
data = np.array(pd.read_csv('save_data'))[:, 0]
#en cada fila hay que usar .split(';')
length = 16

a2_avg = np.zeros(length)
a2_std = np.zeros(length)
b2_avg = np.zeros(length)
b2_std = np.zeros(length)
ab_re_avg = np.zeros(length)
ab_re_std = np.zeros(length)
ab_im_avg = np.zeros(length)
ab_im_std = np.zeros(length)
power_a_avg = np.zeros(length)
power_a_std = np.zeros(length)
power_b_avg = np.zeros(length)
power_b_std = np.zeros(length)
angle_avg = np.zeros(length)
angle_std = np.zeros(length)

data_a2 = np.zeros([16, 50])
data_b2 = np.zeros([16, 50])
data_ab_re = np.zeros([16, 50]) 
data_ab_im = np.zeros([16, 50])


index = np.zeros(length-1)
for i in range(0, 15):
    index[i] = int(50+51*i)
 
data = np.delete(data, index)

for j in range(0,16):
    a2 = np.zeros(50)
    b2 = np.zeros(50)
    ab_re = np.zeros(50)
    ab_im = np.zeros(50)
    for i in range(1, 51):
        aux = map(int, data[i+j*49].split(';'))
        a2[i-1] = aux[0]
        b2[i-1] = aux[1]
        ab_re[i-1] = aux[2]
        ab_im[i-1] = aux[3]
    data_a2[j, :] = a2
    data_b2[j, :] = b2
    data_ab_re[j, :] = ab_re
    data_ab_im[j, :] = ab_im

    power_a_avg[j] = np.mean(10*np.log10(a2+1.0))
    power_a_avg[j] = np.std(10*np.log10(a2+1.0))
    power_b_avg[j] = np.mean(10*np.log10(b2+1.0))
    power_b_avg[j] = np.std(10*np.log10(b2+1.0))
    angle_avg[j] = np.mean(np.rad2deg(np.arctan2(ab_im_avg, ab_re_avg)))
    angle_std[j] = np.std( np.rad2deg(np.arctan2(ab_im_avg, ab_re_avg)))
    a2_avg[j] = np.mean(a2)
    a2_std[j] = np.std(a2)
    b2_avg[j] = np.mean(b2)
    b2_std[j] = np.std(b2)
    ab_re_avg[j] = np.mean(ab_re)
    ab_re_std[j] = np.std(ab_re)
    ab_im_avg[j] = np.mean(ab_im)
    ab_im_std[j] = np.std(ab_im)

#att_val = np.array([10, 15, 20, 25, 30, 35, 40, 45, 50, 60, 62, 64, 66, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81]) #se me fue el 55 D;
att_val = np.array([0, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80])

power = 10*(np.log10(a2_avg+1.0)-np.log10(b2_avg+1.0))
angle = np.rad2deg(np.arctan2(ab_im_avg, ab_re_avg))

power_avg = power_a_avg - power_b_avg
power_std = power_a_std - power_b_std
 


fig = plt.figure()
ax1 = fig.add_subplot(221)
ax2 = fig.add_subplot(222)
ax3 = fig.add_subplot(223)
ax4 = fig.add_subplot(224)

ax1.set_title('power avg')
ax1.plot(att_val, power_avg, '-*')

ax2.set_title('power std')
ax2.plot(att_val, power_std, '-*')

ax3.set_title('angle avg')
ax3.plot(att_val, angle_avg, '-*')

ax4.set_title('angle std')
ax4.plot(att_val, angle_std, '-*')

plt.show()






 


