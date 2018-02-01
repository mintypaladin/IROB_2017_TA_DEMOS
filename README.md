# IROB_2017_TA_DEMOS
JHU Center for Talented Youth IROB-A/IROB (Introduction to Robotics) MATLAB Examples

LOS (Los Angeles Site) 

Hardware Rquired
1. Lego Mindstorms EV3 Brick (1)
2. EV3 or NXT Motors (2) 
3. EV3 or NXT Touch Sensor (1)

(I used 2 EV3 Medium motors as the adjustment knob and to rotate the fan. Any combination 
of motors (EV3 or NXT) should work fine.

This is code to control a fan that changes speed depending on how much a knob is turned. 
I wrote it as a demonstration for the class to see what using a programming language (even 
if it is proprietary and has a license that can costs as much as a house) to program a 
robot as opposed to using Lego's drag and drop software. I used this code in MATLAb in a 
lecture during class and my students recieved it well. The comments provided should make 
assembly self explanitory. 

More information about CTY can be found at: https://cty.jhu.edu/

IROB Course: http://cty.jhu.edu/summer/grades2-6/catalog/math.html#irob


(1/31/18)
I've added a version of this device using Arduino hardware instead of Lego Mindstorms. 


Hardware Requred

1. Arduino (I used an Uno)
2. Potentiometer
3. Push Button
4. Any fan/motor that can run within Arudino's electrical ouput. 

As with the Mindstorms version, the code should make assembly self explanatory, but the 
fan needs to be plugged in a PWM output (3, 5, 6, 9, 10 , 11) Any functioning touch button 
or potentioemeter should do (although you may need to adjust the ratio values), and I used 
an old desktop computer fan as the output. When choosing a fan/motor, keep in mind that the
max output voltage is around 5V. 
