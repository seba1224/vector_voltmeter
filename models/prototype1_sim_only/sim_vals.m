
%vamos a hacer esta prueba con un periodo de dato de 50 ciclos, ie
% pos_id =40, irig_1=25, irig_0=10...
%recordar que hay una latencia de almenos 10 ciclos para que los circ se
%retroalimenten.


%para per_data=50, se tienen los vals de comparacion en el modelo 30,17,7
%para per_data=70 se tienen los vals  de comparacion en el modelo 48,27,9




per_data = 70; %50; %periodo de duracion


pos_id = 0.8*per_data;
irig_1 = 0.5*per_data;
irig_0 = 0.2* per_data;
time = [1:1:3900]';

hrd_rst = zeros(3900, 2);
hrd_rst(2, 2) = 1;
hrd_rst(:, 1) = time;

cal = zeros(3900, 2);
cal(6, 2) = 1;
cal(:, 1) = time;

gpio = zeros(3900, 2);
gpio(:, 1) = time;


gpio(1:15, 2) = 1;
gpio(30:irig_1+30, 2) = 1;
gpio(30+per_data:30+per_data+irig_1, 2) = 1;
gpio(30+per_data*2:30+per_data*2+pos_id, 2) = 1;    %1er pos id
gpio(30+per_data*3:30+per_data*3+pos_id, 2) = 1;    %2nd pos id

%usec 0101---->5
gpio(30+per_data*4:30+per_data*4+irig_1, 2) = 1;
gpio(30+per_data*5:30+per_data*5+irig_0, 2) = 1;
gpio(30+per_data*6:30+per_data*6+irig_1, 2) = 1;
gpio(30+per_data*7:30+per_data*7+irig_0, 2) = 1;

%idx
gpio(30+per_data*8:30+per_data*8+irig_0, 2) = 1;

%dsec 001---->1
gpio(30+per_data*9:30+per_data*9+irig_1, 2) = 1;
gpio(30+per_data*10:30+per_data*10+irig_0, 2) = 1;
gpio(30+per_data*11:30+per_data*11+irig_0, 2) = 1;

%pos_id
gpio(30+per_data*12:30+per_data*12+pos_id, 2) = 1;

%umin 1000---->8
gpio(30+per_data*13:30+per_data*13+irig_0, 2) = 1;
gpio(30+per_data*14:30+per_data*14+irig_0, 2) = 1;
gpio(30+per_data*15:30+per_data*15+irig_0, 2) = 1;
gpio(30+per_data*16:30+per_data*16+irig_1, 2) = 1;

%idx
gpio(30+per_data*17:30+per_data*17+irig_0, 2) = 1;

%dmin 010 --->2
gpio(30+per_data*18:30+per_data*18+irig_0, 2) = 1;
gpio(30+per_data*19:30+per_data*19+irig_1, 2) = 1;
gpio(30+per_data*20:30+per_data*20+irig_0, 2) = 1;

%empty
gpio(30+per_data*21:30+per_data*21+irig_0, 2) = 1;

%pos_id
gpio(30+per_data*22:30+per_data*22+pos_id, 2) = 1;

%uhr 1001---->9
gpio(30+per_data*23:30+per_data*23+irig_1, 2) = 1;
gpio(30+per_data*24:30+per_data*24+irig_0, 2) = 1;
gpio(30+per_data*25:30+per_data*25+irig_0, 2) = 1;
gpio(30+per_data*26:30+per_data*26+irig_1, 2) = 1;

%idx
gpio(30+per_data*27:30+per_data*27+irig_0, 2) = 1;

%dhr----->01
gpio(30+per_data*28:30+per_data*28+irig_1, 2) = 1;
gpio(30+per_data*29:30+per_data*29+irig_0, 2) = 1;

%empty's
gpio(30+per_data*30:30+per_data*30+irig_0, 2) = 1;
gpio(30+per_data*31:30+per_data*31+irig_0, 2) = 1;

%pos_id
gpio(30+per_data*32:30+per_data*32+pos_id, 2) = 1;

%uday 0110---->6
gpio(30+per_data*33:30+per_data*33+irig_0, 2) = 1;
gpio(30+per_data*34:30+per_data*34+irig_1, 2) = 1;
gpio(30+per_data*35:30+per_data*35+irig_1, 2) = 1;
gpio(30+per_data*36:30+per_data*36+irig_0, 2) = 1;

%idx
gpio(30+per_data*37:30+per_data*37+irig_0, 2) = 1;

%dday 1001--->9
gpio(30+per_data*38:30+per_data*38+irig_1, 2) = 1;
gpio(30+per_data*39:30+per_data*39+irig_0, 2) = 1;
gpio(30+per_data*40:30+per_data*40+irig_0, 2) = 1;
gpio(30+per_data*41:30+per_data*41+irig_1, 2) = 1;

%pos_id
gpio(30+per_data*42:30+per_data*42+pos_id, 2) = 1;

%cday 10--->2
gpio(30+per_data*43:30+per_data*43+irig_0, 2) = 1;
gpio(30+per_data*44:30+per_data*44+irig_1, 2) = 1;

%empty's
gpio(30+per_data*45:30+per_data*45+irig_0, 2) = 1;
gpio(30+per_data*46:30+per_data*46+irig_0, 2) = 1;
gpio(30+per_data*47:30+per_data*47+irig_0, 2) = 1;
gpio(30+per_data*48:30+per_data*48+irig_0, 2) = 1;
gpio(30+per_data*49:30+per_data*49+irig_0, 2) = 1;
gpio(30+per_data*50:30+per_data*50+irig_0, 2) = 1;
gpio(30+per_data*51:30+per_data*51+irig_0, 2) = 1;

%pos id
gpio(30+per_data*52:30+per_data*52+pos_id, 2) = 1;

%other data
gpio(30+per_data*53:30+per_data*53+irig_0, 2) = 1;
gpio(30+per_data*54:30+per_data*54+irig_1, 2) = 1;











%{
non ideal simulation, there are mislocated vals at the beggining of the
readings and misslocated symbols, it also works :)

gpio(1:15, 2) = 1;
gpio(30:irig_1+30, 2) = 1;
gpio(30+per_data:30+per_data+irig_1, 2) = 1;
gpio(30+per_data*2:30+per_data*2+pos_id, 2) = 1;
gpio(30+per_data*3:30+per_data*3+irig_0, 2) = 1;
gpio(30+per_data*4:30+per_data*4+pos_id, 2) = 1;
gpio(30+per_data*5:30+per_data*5+pos_id, 2) = 1;
gpio(30+per_data*6:30+per_data*6+irig_0, 2) = 1;
gpio(30+per_data*7:30+per_data*7+irig_1, 2) = 1;
gpio(30+per_data*8:30+per_data*8+irig_1, 2) = 1;
gpio(30+per_data*9:30+per_data*9+irig_1, 2) = 1;
gpio(30+per_data*10:30+per_data*10+irig_0, 2) = 1;
%}




%{
 ideal simulation, each val it is in their position until a failure occurs, it
 works as it should :)

gpio(10:50 ,2) = 1;         %1er pos_ident
gpio(60:100, 2) = 1;        %2do pos_ident
gpio(110:135, 2) = 1;       %irig_1 usec
gpio(160:170, 2) = 1;       %irig_0 usec
gpio(210:235, 2) = 1;       %irig_1 usec
gpio(260:270, 2) = 1;       %irig_0 usec
gpio(310:320, 2) = 1;       %irig_0   este corresponde a un ind
gpio(360:385, 2) = 1;       %irig_1 dsec
gpio(410:435, 2) = 1;       %irig_1 dsec
gpio(460:470, 2) = 1;       %irig_0 dsec
gpio(510:550, 2) = 1;       %irig_pos_id
gpio(560:570, 2) = 1;       %irig_0 u_min
gpio(610:620, 2) = 1;       %irig_0 u_min
gpio(660:700, 2) = 1;       %irig_pos_id ----> es un fallo
gpio(710:735, 2) = 1;       %irig_1
gpio(760:800, 2) = 1;       %irig_pos_id

%}

%{prev vals 
%hrd_rst = [0 0; 1 1; 2 0; 3 0; 4 0; 5 0; 6 0; 7 0; 8 0; 9 0; 10 0; 11 0; 12 0; 13 0; 14 0; 15 0; 16 0; 17 0; 18 0; 19 0; 20 0; 21 0; 22 0; 23 0; 24 0; 25 0; 26 0; 27 0; 28 0; 29 0; 30 0]
%cal = [0 0; 1 0; 2 0; 3 0; 4 0; 5 0; 6 1; 7 0; 8 0; 9 0; 10 0; 11 0; 12 0; 13 0; 14 0; 15 0; 16 0; 17 0; 18 0; 19 0; 20 0; 21 0; 22 0; 23 0; 24 0; 25 0; 26 0; 27 0; 28 0; 29 0; 30 0]
%gpio = [0 0; 1 0; 2 0; 3 0; 4 0; 5 0; 6 0; 7 0; 8 0; 9 1; 10 1; 11 1; 12 1; 13 1; 14 1; 15 0; 16 0; 17 0; 18 0; 19 0; 20 0; 21 0; 22 0; 23 0; 24 1; 25 1; 26 1; 27 0; 28 0; 29 0; 30 0]
%}
