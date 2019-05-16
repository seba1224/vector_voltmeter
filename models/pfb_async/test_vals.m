largo = 2200;
time = [1:1:largo];
sync_dec = zeros(largo,2);
sync_dec(2,2) = 1; %partimos a enviar datos desde el 3er tiempo
sync_dec(:,1) = time;
sync = zeros(largo,2);
sync(2,2) = 1;
sync(:,1) = time;

data_dec = zeros(largo,2);
data_dec(:,1) = time;
data = zeros(largo,2);
data(:,1) = time;
en = zeros(largo, 2);
en(:,1) = time;
index = 0;
top_cycle = floor(largo/256);
cycle = 0;

while cycle<top_cycle  
   sync(2+cycle*256, 2) = 1;
   sync(2+cycle*256+64, 2) = 1;
   sync(2+cycle*256+128,2) = 1;
   sync(2+cycle*256+192,2) = 1;
   while index<64
       data(3+256*cycle+index, 2) = (index+1)*0.01;
       data(3+256*cycle+index+64,2) = (index+1)*0.01;
       data(3+256*cycle+index+128,2) = (index+1)*0.01;
       data(3+256*cycle+index+192,2) = (index+1)*0.01;
       data_dec(3+256*cycle+4*index, 2) = (index+1)*0.01;
       data_dec(3+256*cycle+4*index+1, 2)= (index+1)*0.01;
       data_dec(3+256*cycle+4*index+2, 2)= (index+1)*0.01;
       data_dec(3+256*cycle+4*index+3, 2)= (index+1)*0.01;
       en(3+256*cycle+4*index, 2) = 1;
       index = index +1;
   end
   index = 0;
   cycle= cycle+1;
   if cycle~=0
       sync_dec(2+cycle*256,2) = 1;
   end
end


data = [data(1:largo,1), data(1:largo,2)];


%% Analisis
%{
dec_dat = data_dec_out.data;
sync_dec = sync_dec_out.data;
en_dec = en_dec_out.data;

dat = data_out.data;
sync = sync_out.data;
frames_norm = find(sync==1);

ind_dec = find(en_dec==1);
dat_red = dec_dat(ind);
frame = find(sync_dec==1);
ind = find(en(frame(1):length(en))==1);
data_out = dec_dat(ind+frame(1)-1);



%}
















