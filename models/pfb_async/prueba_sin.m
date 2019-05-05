largo = 10^4;
sync_period = 256; %antes era 256 y funcaba sym_2
fs = 135*10^6;
t = [0:largo-1]/fs;
t_cycl = [0:largo-1];
sync_dec = zeros(largo,2);
data_dec= zeros(largo,2);
sync_dec(:,1) = t_cycl;
data_dec(:,1) = t_cycl;
en_dec = zeros(largo,2);
en_dec(:,1) = t_cycl;
top_cycle = floor(largo/sync_period);
cycle = 0;
index = 0;

freq1 = 10*10^6;
data_sin = 0.5*sin(2*pi*freq1*t(3:length(t)));
while cycle<top_cycle
   sync_dec(cycle*sync_period+1,2) = 1;
   cycle= cycle+1;
end
i = 1;
j = 1;
while i<length(t)/4
   while j<4
       data_dec(4+4*i+j,2) = data_sin(i+1);
       j = j+1; 
   end
   j=0;
    en_dec(1+4*i,2) = 1;
    i= i+1;
end
data_dec = [data_dec(1:largo, 1), data_dec(1:largo, 2)];
%{
data = data_dec.data();
sync = sync_dec.data();
en = en_dec.data();



ind_sync = find(sync_dec.data()==1);
enable = en_dec.data();
frame1 = find(enable(ind_sync(1):ind_sync(2)));
ind_data = ind_sync(1) + frame1-1;


data_dec2 = out_dec2.data();
datain = data_dec2(ind_data);

%fft to the pfb input
y = fft(datain);
p2 = abs(y);
p1 = p2(1:64/2+1);
p1(2:end-1) = 2*p1(2:end-1);
% f = fs/4*(0:(64/2))/64;
df = fs/8/32;
f = fs/8*3:df:fs/2;
figure
plot(f,flip(p1),'-*')

%}

