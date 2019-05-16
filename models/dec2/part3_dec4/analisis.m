%data_input = data_in;
data_input = dat_in.data.data;
sync_in = sync;


real_fft = real_data.data.data;
img_fft = img_data.data.data;
ind = fft_ind.data.data;
done_out = done.data.data;

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


frame = find(done_out==1);
magnitud = real_fft.^2+img_fft.^2;
i=1;
aux = zeros(1,32);
while i<=32
    aux(1,i) = magnitud(frame(1)+4*(i-1));
    i = i+1;
end
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f(2:end), flip(aux), '*-')
title('fft out 64')

figure
plot(f(2:end), 20*log10(flip(aux)), '*-')
title('dbs')

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

