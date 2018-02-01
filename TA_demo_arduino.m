clear

% Define Arduino
a = arduino('COM3','Uno');

% Define servo
s = servo(a, 'D4');

% Initialize variable c
c=0;

% Set loop to repeat forever
while 1==1
clc 

c=readVoltage(a,'A1'); % Button reading
d=readVoltage(a,'A0'); % Potentiometer reading

% Equation for ratio between potentiometer reading and voltage output
e=3.333+0.46*d;

if d==0
writePWMVoltage(a, 'D9', 0) 
else
writePWMVoltage(a, 'D9', e)
end

pause(0.1)

% If button is pressed
if c ~= 0
    
    % Stop fan
    writePWMVoltage(a, 'D9', 0)
    
    % Loop interrupt 
    break
    
end

end

disp('End')