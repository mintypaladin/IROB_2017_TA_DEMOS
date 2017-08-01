% CTY LOS IROB-A 
% Written By: Daniel Lui

% This code is written to control an autommatic fan of sorts
% The contraption was built using Lego EV3 parts and components

clc 
clear

% Connect EV3 to computer over MATLAB
TA=legoev3('usb');

% Defines motors (Port B & C)
motB=motor(TA,'B');
motC=motor(TA,'C');

% Defines touch sensor 
touch1=touchSensor(TA,1);


while 1==1 %Set while loop to repeat forever
rotB=readRotation(motB); %take reading rotation for B

if rotB <= 170 %if less than 170 degrees
    clc %clears display
    disp({'Angle',rotB;'Status','OFF'})
    stop(motC) %stop command for motor
    writeStatusLight(TA,'red') %brick light command

elseif rotB>=170 %if more than 170 degrees
    clc
    disp({'Angle',rotB;'Status','ON';'Speed',(0.5*rotB-90)})
    writeStatusLight(TA,'green')
    motC.Speed = 0.5*rotB-85; %sets speed to scale with rotations
        start(motC) %start command for motor 

end

if readTouch(touch1)==1 %if touch sensor is pressed
    break %loop interrupt / %break while loop
end
end

stop(motC) %motor stop command
writeStatusLight(TA,'off') %turn off brick light

