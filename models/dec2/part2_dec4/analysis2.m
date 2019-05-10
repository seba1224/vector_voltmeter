%data_input = data_in;
data_input = dat_in.data.data;
sync_in = sync;
out_dec = dat_out.data.data;
en = valid.data.data;
sync_out = sync_pfb.data;

%fft input
fs =135;
y = fft(data_in(4:259,2));
p2 = abs(y);
p1 = p2(1:256/2+1);
p1(2:end-1) = 2*p1(2:end-1);
f = fs*(0:(256/2))/256;
figure
plot(f, p1,'-*')
title('256 fft input')

%pfb output

frame = find(sync_out==1);
ind = find(en(frame(1):length(en))==1);
data_out = out_dec(ind+frame(1)-1);

y = fft(data_out(1:64));
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
% f = fs/4*(0:(64/2))/64;
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f,flip(p1),'-*')
title('64 fft output dec')
