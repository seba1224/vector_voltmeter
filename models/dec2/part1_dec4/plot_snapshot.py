import corr, time 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


IP = '192.168.1.12'
bof = 'testing.bof'#'bom_dia_2019_Jan_21_1614.bof'

# Connect to ROACH and program it
fpga = corr.katcp_wrapper.FpgaClient(IP, 7147) # Change the IP for the one your ROACH has
time.sleep(1)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)

fpga.write_int('snap_trig', 1)
#fpga.progdev('snapshot_roach1.bof') # change the bof filename for the one you have

fig, ax = plt.subplots()
line, = plt.plot([], [], animated=True)
plt.xlim(0,255)
plt.ylim(-130,130)

def animate(_):
    snap_data = np.fromstring(fpga.snapshot_get('adcsnap2', man_trig=True, man_valid=True)['data'], dtype='>i1') # 'snapshot' string here must be the name of your snapshot block in the simulink model
    line.set_data(range(len(snap_data)), snap_data)
    return line,

ani = FuncAnimation(fig, animate, blit=True)
plt.show()
