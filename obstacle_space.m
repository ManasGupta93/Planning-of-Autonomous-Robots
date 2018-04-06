function[in]=obstacle_space(xobs,yobs)

% % tollerance for the obstacle so that robot doesnot collide.
;
%% For the ploygon
x1=[120,158,165,188,168,145];
y1=[55,51,89,51,14,14];

[in1,on1]=inpolygon(xobs,yobs,x1,y1);

%% For the Square
x2=[55,105,105,55];
y2=[67.5,67.5,112.5,112.5];

[in2,on2]=inpolygon(xobs,yobs,x2,y2);

%% For the Circle

if (xobs-180)^2 + (yobs-120)^2 - 225 < 0
    in3=1;
    
else 
    in3=0;
end

%% Finall result
in = in1 || in2 || in3;


end