largo = 10^6;
sync_period = 64*4*4*2; %antes era 256 y funcaba sym_2
fs = 135*10^6;
t = [0:largo-1]/fs;
t_cycl = [0:largo-1];
sync = zeros(largo,2);
data_in = zeros(largo,2);
sync(:,1) = t_cycl;
data_in(:,1) = t_cycl;

top_cycle = floor(largo/sync_period);
cycle = 0;

while cycle<top_cycle
   sync(cycle*sync_period+1,2) = 1;  
   cycle= cycle+1;
end
freq1 = 58*10^6;
freq2 = 20*10^6;
sin_clean = 0.5*sin(2*pi*freq1*t(3:length(t)))+0.5*sin(2*pi*freq2*t(3:length(t)));
data_in(3:length(t), 2) = sin_clean;
data_in(3:length(t),2) =awgn(sin_clean, 20);



sync = [sync(1:largo,1), sync(1:largo,2)];