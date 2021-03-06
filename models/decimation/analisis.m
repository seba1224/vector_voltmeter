data_input = data_in;
sync_in = sync;
out_dec = out_dec2.data();
enable_pfb  = en_pfb.data();


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
%pfb inputs..

ind_sync = find(sync_pfb.data()==1);
enable_pfb = en_pfb.data();
frame1 = find(enable_pfb(ind_sync(1):ind_sync(2)));
ind_data = ind_sync(1) + frame1-1;

data_dec2 = out_dec2.data();
datain_pfb = data_dec2(ind_data);

%fft to the pfb input
y = fft(datain_pfb);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
% f = fs/4*(0:(64/2))/64;
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f,flip(p1),'-*')
title('64 fft output dec')

%fft output
en_spect = find(en_spec.data()==1);
fft_data = data_spec.data();
data_fft = fft_data(en_spect);
figure
plot(f(2:length(f)), flip(data_fft(1:32)),'-*')
title('output 64-fft block')

%acc output
ind_we = find(en_bram.data()==1);
acc_data = data_acc.data();
final_data = acc_data(ind_we);
figure
plot(f(2:length(f)), flip(final_data(1:32)),'-*')
title('acc output')







