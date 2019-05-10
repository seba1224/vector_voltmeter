%data_input = data_in;
data_input = dat_in.data.data;
sync_in = sync;
out_dec = dat_out.data.data;
en = valid.data.data;



%fft input
fs =135;
y = fft(data_in(4:259,2));
p2 = abs(y);
p1 = p2(1:256/2+1);
p1(2:end-1) = 2*p1(2:end-1);
f = fs*(0:(256/2))/256;
figure
plot(f, 10*log10(p1),'-*')
title('256 fft input')

%pfb inputs..

ind_sync = find(en==1);
data_dec = out_dec(ind_sync);

y = fft(data_dec(1:64));
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
% f = fs/4*(0:(64/2))/64;
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f,10*log10(flip(p1)),'-*')
title('64 fft output dec')

w = blackmanharris(64);
asd = data_dec(1:64).*w;
y = fft(asd);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
figure
plot(f,10*log10(flip(p1)),'-*')
title('64 fft output blackman-harris windowed')

w = chebwin(64, 100);
asd = data_dec(1:64).*w;
y = fft(asd);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
figure
plot(f,10*log10(flip(p1)),'-*')
title('64 fft output Chebychev windowed')

w = kaiser(64,13.5);
asd = data_dec(1:64).*w;
y = fft(asd);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
figure
plot(f,10*log10(flip(p1)),'-*')
title('64 fft output Kaiser windowed')


w = nuttallwin(64);
asd = data_dec(1:64).*w;
y = fft(asd);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
figure
plot(f,10*log10(flip(p1)),'-*')
title('64 fft output Nuttall windowed')