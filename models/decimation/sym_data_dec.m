largo = 10^7;
fs = 135*10^6;
t = [0:largo-1]/fs;
t_cycl = [0:largo-1];
sync = zeros(largo,2);
data_in = zeros(largo,2);
sync(:,1) = t_cycl;
data_in(:,1) = t_cycl;

top_cycle = floor(largo/256);
cycle = 0;

while cycle<top_cycle
   sync(cycle*256+1,2) = 1;  
   cycle= cycle+1;
end
freq1 = 56*10^6;
freq2 = 10*10^6;
data_in(3:length(t),2) = 0.5*sin(2*pi*freq1*t(3:length(t)))+0.5*sin(2*pi*freq2*t(3:length(t)));

