import corr, time
import os

IP = '192.168.1.12'
bof = 'gpio_basic.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)

