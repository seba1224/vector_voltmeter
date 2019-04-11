largo = 2300;
time = [1:1:largo];
sync = zeros(largo,2);
sync(2,2) = 1; %partimos a enviar datos desde el 3er tiempo
sync(:,1) = time;

data = zeros(largo,2);
data(:,1) = time;
en = zeros(largo, 2);
en(:,1) = time;
addr = zeros(largo,2);
addr(:,1) = time;
index = 0;
top_cycle = floor(largo/256);
cycle = 0;

while cycle < top_cycle
    while index < 64
        data(3+256*cycle+4*index, 2) = index;
        data(3+256*cycle+4*index+1, 2)= index;
        data(3+256*cycle+4*index+2, 2)= index;
        data(3+256*cycle+4*index+3, 2)= index;
        en(3+256*cycle+4*index+3, 2) = 1;
        addr(3+256*cycle+4*index, 2) = index;
        addr(3+256*cycle+4*index+1, 2)= index;
        addr(3+256*cycle+4*index+2, 2)= index;
        addr(3+256*cycle+4*index+3, 2)= index;
        index = index +1;
    end
    index = 0;
    cycle = cycle+1;
end


%{
while index < 64
    data(3+4*index, 2) = index;
    data(3+4*index+1,2)= index; 
    data(3+4*index+2,2)= index;
    data(3+4*index+3,2)= index;
    data(259+4*index, 2) = index;
    data(259+4*index+1, 2) = index;
    data(259+4*index+2, 2) = index;
    data(259+4*index+3, 2) = index;
    data(515+4*index, 2) = index;
    data(515+4*index+1, 2) = index;
    data(515+4*index+2, 2) = index;
    data(515+4*index+3, 2) = index;
    data(771+4*index, 2) = index;
    data(771+4*index, 2) = index;
    data(771+4*index+1, 2) = index;
    
    en(3+4*index,2) = 1;
    en(259+4*index,2) = 1;
    en(515+4*index,2) = 1;
    en(771+4*index,2) = 1;
    addr(3+4*index,2) = index; 
    addr(3+4*index+1,2) = index;
    addr(3+4*index+2,2) = index;
    addr(3+4*index+3,2) = index;
    addr(259+4*index,2) = index;
    addr(259+4*index+1,2) = index;
    addr(259+4*index+2,2) = index;
    addr(259+4*index+3,2) = index;
    addr(515+4*index, 2) = index;
    addr(515+4*index+1, 2) = index;
    addr(515+4*index+2, 2) = index;
    addr(515+4*index+3, 2) = index;
    addr(771+4*index, 2) = index;
    addr(771+4*index+1, 2) = index;
    addr(771+4*index+2, 2) = index;
    addr(771+4*index+3, 2) = index;
    index = index+1;
end
%}



