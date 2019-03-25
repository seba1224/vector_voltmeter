import ntplib
from time import ctime, time
import corr



def write_time(fpga, reg, hostIP = 'europe.pool.ntp.org', version=3):
    """"""
    client = ntplib.NTPClient()

    host = hostIP  #hostIP             este debiese ser la ip del host
    vers = version                      #version      el de xli es 4
    resp = ctime(client.request(host, version=vers).tx_time)

    try:
        while 1:
            response = client.request(host, version=vers)
            sec = ctime(response.tx_time)[18]
            start = time()
            if(sec!=resp[18]):
                break
    except KeyboardInterrupt:
        print "process stopped"
    #start = time()
    fpga.write_int(reg, response.tx_timestamp)
    end = time()
    print('it takes '+str(end-start)+'write the register...') #ver si toma mas de 1 sec
    print('time written: 'str(ctime(response.tx_timestamp))) #esto esta escrito en timestamp, puede variar de acuerdo al epoch del pc
    #print(resp)
    #print(ctime(response.tx_time))
    return end-start
    


