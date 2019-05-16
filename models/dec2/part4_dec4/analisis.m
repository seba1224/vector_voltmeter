%data_input = data_in;
data_input = dat_in.data.data;
sync_in = sync;

out_data = data_out.data.data;
we = en.data;

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

ind = find(we==1);
datos = out_data(ind);
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f(2:end), flip(datos(7:length(f)-1+6)))
title('fft out 64')

%{
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
%}
