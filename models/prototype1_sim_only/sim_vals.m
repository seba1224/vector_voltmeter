
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
time = [1:1:15000]';    %7600 usaba antes y era piola

hrd_rst = zeros(15000, 2);
hrd_rst(2, 2) = 1;
hrd_rst(:, 1) = time;

cal = zeros(15000, 2);
cal(6, 2) = 1;
cal(:, 1) = time;

gpio = zeros(15000, 2);
gpio(:, 1) = time;


gpio(1:15, 2) = 1;
gpio(30:irig_1+30, 2) = 1;
gpio(30+per_data:30+per_data+irig_1, 2) = 1;
gpio(30+per_data*2:30+per_data*2+pos_id, 2) = 1;    %1er pos id
gpio(30+per_data*3:30+per_data*3+pos_id, 2) = 1;    %2nd pos id     %1

%usec 0101---->5
gpio(30+per_data*4:30+per_data*4+irig_1, 2) = 1;                    %2
gpio(30+per_data*5:30+per_data*5+irig_0, 2) = 1;                    %3   
gpio(30+per_data*6:30+per_data*6+irig_1, 2) = 1;                    %4
gpio(30+per_data*7:30+per_data*7+irig_0, 2) = 1;                    %5

%idx
gpio(30+per_data*8:30+per_data*8+irig_0, 2) = 1;                    %6

%dsec 001---->1
gpio(30+per_data*9:30+per_data*9+irig_1, 2) = 1;                    %7
gpio(30+per_data*10:30+per_data*10+irig_0, 2) = 1;                  %8
gpio(30+per_data*11:30+per_data*11+irig_0, 2) = 1;                  %9

%pos_id
gpio(30+per_data*12:30+per_data*12+pos_id, 2) = 1;                  %10

%umin 1000---->8
gpio(30+per_data*13:30+per_data*13+irig_0, 2) = 1;                  %11
gpio(30+per_data*14:30+per_data*14+irig_0, 2) = 1;                  %12
gpio(30+per_data*15:30+per_data*15+irig_0, 2) = 1;                  %13
gpio(30+per_data*16:30+per_data*16+irig_1, 2) = 1;                  %14

%idx
gpio(30+per_data*17:30+per_data*17+irig_0, 2) = 1;                  %15

%dmin 010 --->2
gpio(30+per_data*18:30+per_data*18+irig_0, 2) = 1;                  %16
gpio(30+per_data*19:30+per_data*19+irig_1, 2) = 1;                  %17
gpio(30+per_data*20:30+per_data*20+irig_0, 2) = 1;                  %18

%empty
gpio(30+per_data*21:30+per_data*21+irig_0, 2) = 1;                  %19

%pos_id
gpio(30+per_data*22:30+per_data*22+pos_id, 2) = 1;                  %20

%uhr 1001---->9
gpio(30+per_data*23:30+per_data*23+irig_1, 2) = 1;                  %21
gpio(30+per_data*24:30+per_data*24+irig_0, 2) = 1;                  %22
gpio(30+per_data*25:30+per_data*25+irig_0, 2) = 1;                  %23
gpio(30+per_data*26:30+per_data*26+irig_1, 2) = 1;                  %24

%idx
gpio(30+per_data*27:30+per_data*27+irig_0, 2) = 1;                  %25

%dhr----->01
gpio(30+per_data*28:30+per_data*28+irig_1, 2) = 1;                  %26
gpio(30+per_data*29:30+per_data*29+irig_0, 2) = 1;                  %27

%empty's
gpio(30+per_data*30:30+per_data*30+irig_0, 2) = 1;                  %28
gpio(30+per_data*31:30+per_data*31+irig_0, 2) = 1;                  %29

%pos_id
gpio(30+per_data*32:30+per_data*32+pos_id, 2) = 1;                  %30

%uday 0110---->6
gpio(30+per_data*33:30+per_data*33+irig_0, 2) = 1;                  %31
gpio(30+per_data*34:30+per_data*34+irig_1, 2) = 1;                  %32
gpio(30+per_data*35:30+per_data*35+irig_1, 2) = 1;                  %33    
gpio(30+per_data*36:30+per_data*36+irig_0, 2) = 1;                  %34

%idx
gpio(30+per_data*37:30+per_data*37+irig_0, 2) = 1;                  %35

%dday 1001--->9
gpio(30+per_data*38:30+per_data*38+irig_1, 2) = 1;                  %36
gpio(30+per_data*39:30+per_data*39+irig_0, 2) = 1;                  %37
gpio(30+per_data*40:30+per_data*40+irig_0, 2) = 1;                  %38
gpio(30+per_data*41:30+per_data*41+irig_1, 2) = 1;                  %39

%pos_id
gpio(30+per_data*42:30+per_data*42+pos_id, 2) = 1;                  %40

%cday 10--->2
gpio(30+per_data*43:30+per_data*43+irig_0, 2) = 1;                  %41
gpio(30+per_data*44:30+per_data*44+irig_1, 2) = 1;                  %42

%empty's
gpio(30+per_data*45:30+per_data*45+irig_0, 2) = 1;                  %43
gpio(30+per_data*46:30+per_data*46+irig_0, 2) = 1;                  %44
gpio(30+per_data*47:30+per_data*47+irig_0, 2) = 1;                  %45
gpio(30+per_data*48:30+per_data*48+irig_0, 2) = 1;                  %46
gpio(30+per_data*49:30+per_data*49+irig_0, 2) = 1;                  %47
gpio(30+per_data*50:30+per_data*50+irig_0, 2) = 1;                  %48
gpio(30+per_data*51:30+per_data*51+irig_0, 2) = 1;                  %49

%pos id
gpio(30+per_data*52:30+per_data*52+pos_id, 2) = 1;                  %50

%other data
gpio(30+per_data*53:30+per_data*53+irig_0, 2) = 1;                  %51
gpio(30+per_data*54:30+per_data*54+irig_1, 2) = 1;                  %52
gpio(30+per_data*55:30+per_data*55+irig_1, 2) = 1;                  %53
gpio(30+per_data*56:30+per_data*56+irig_1, 2) = 1;                  %54
gpio(30+per_data*57:30+per_data*57+irig_1, 2) = 1;                  %55
gpio(30+per_data*58:30+per_data*58+irig_1, 2) = 1;                  %56
gpio(30+per_data*59:30+per_data*59+irig_1, 2) = 1;                  %57
gpio(30+per_data*60:30+per_data*60+irig_1, 2) = 1;                  %58
gpio(30+per_data*61:30+per_data*61+irig_1, 2) = 1;                  %59
gpio(30+per_data*62:30+per_data*62+irig_1, 2) = 1;                  %60
gpio(30+per_data*63:30+per_data*63+irig_1, 2) = 1;                  %61
gpio(30+per_data*64:30+per_data*64+irig_1, 2) = 1;                  %62 
gpio(30+per_data*65:30+per_data*65+irig_1, 2) = 1;                  %63
gpio(30+per_data*66:30+per_data*66+irig_1, 2) = 1;                  %64
gpio(30+per_data*67:30+per_data*67+irig_1, 2) = 1;                  %65
gpio(30+per_data*68:30+per_data*68+irig_1, 2) = 1;                  %66
gpio(30+per_data*69:30+per_data*69+irig_1, 2) = 1;                  %67
gpio(30+per_data*70:30+per_data*70+irig_1, 2) = 1;                  %68
gpio(30+per_data*71:30+per_data*71+irig_1, 2) = 1;                  %69
gpio(30+per_data*72:30+per_data*72+irig_1, 2) = 1;                  %70
gpio(30+per_data*73:30+per_data*73+irig_1, 2) = 1;                  %71
gpio(30+per_data*74:30+per_data*74+irig_1, 2) = 1;                  %72
gpio(30+per_data*75:30+per_data*75+irig_1, 2) = 1;                  %73
gpio(30+per_data*76:30+per_data*76+irig_1, 2) = 1;                  %74
gpio(30+per_data*77:30+per_data*77+irig_1, 2) = 1;                  %75
gpio(30+per_data*78:30+per_data*78+irig_1, 2) = 1;                  %76
gpio(30+per_data*79:30+per_data*79+irig_1, 2) = 1;                  %77
gpio(30+per_data*80:30+per_data*80+irig_1, 2) = 1;                  %78
gpio(30+per_data*81:30+per_data*81+irig_1, 2) = 1;                  %79
gpio(30+per_data*82:30+per_data*82+irig_1, 2) = 1;                  %80
gpio(30+per_data*83:30+per_data*83+irig_1, 2) = 1;                  %81
gpio(30+per_data*84:30+per_data*84+irig_1, 2) = 1;                  %82
gpio(30+per_data*85:30+per_data*85+irig_1, 2) = 1;                  %83
gpio(30+per_data*86:30+per_data*86+irig_1, 2) = 1;                  %84
gpio(30+per_data*87:30+per_data*87+irig_1, 2) = 1;                  %85
gpio(30+per_data*88:30+per_data*88+irig_1, 2) = 1;                  %86
gpio(30+per_data*89:30+per_data*89+irig_1, 2) = 1;                  %87
gpio(30+per_data*90:30+per_data*90+irig_1, 2) = 1;                  %88
gpio(30+per_data*91:30+per_data*91+irig_1, 2) = 1;                  %89
gpio(30+per_data*92:30+per_data*92+irig_1, 2) = 1;                  %90
gpio(30+per_data*93:30+per_data*93+irig_1, 2) = 1;                  %91
gpio(30+per_data*94:30+per_data*94+irig_1, 2) = 1;                  %92
gpio(30+per_data*95:30+per_data*95+irig_1, 2) = 1;                  %93
gpio(30+per_data*96:30+per_data*96+irig_1, 2) = 1;                  %94
gpio(30+per_data*97:30+per_data*97+irig_1, 2) = 1;                  %95
gpio(30+per_data*98:30+per_data*98+irig_1, 2) = 1;                  %96
gpio(30+per_data*99:30+per_data*99+irig_1, 2) = 1;                  %97
gpio(30+per_data*100:30+per_data*100+irig_1, 2) = 1;                %98
gpio(30+per_data*101:30+per_data*101+irig_1, 2) = 1;                %99
gpio(30+per_data*102:30+per_data*102+irig_1, 2) = 1;                %100
gpio(30+per_data*103:30+per_data*103+pos_id, 2) = 1;
gpio(30+per_data*104:30+per_data*104+pos_id, 2) = 1;
gpio(30+per_data*105:30+per_data*105+irig_1, 2) = 1;
gpio(30+per_data*106:30+per_data*106+pos_id, 2) = 1;

i = 1;
while(i<100)
    gpio(30+per_data*(106+i):30+per_data*(106+i)+irig_0, 2) = 1;
    i=i+1;
end
    










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
