largo = 600;
time = [1:1:largo];
sync = zeros(largo,2);
sync(2,2) = 1; %partimos a enviar datos desde el 3er tiempo
sync(:,1) = time;

data = zeros(largo, 2);
data(:,1) = time; 
data(6,2) = 1;