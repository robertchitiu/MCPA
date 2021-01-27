set(0,'defaultFigureWindowStyle','docked')
set(0,'defaultaxesfontsize',20)
set(0,'DefaultLineLineWidth',2)

%variable declarations
x=0;
v=0;
Vav=0;
t=0;
dt=1;
nt=1000;
F=1;
m=1;

%This make it about a 5 percent change 
%R=44.9;
R=15;
%Probablility
p = 1 - exp(-dt/R);

clf
%for loop to calculate the points for the plot
for i=2:nt
    %velocity calculations
    v1=v+1*dt;
    %Displacement calculation
    x1=x+v1*dt;
    %calculation for the average velocity
    Vav= (Vav+v1);
    
    %Probablity stament to see if V goes to 0
    if rand()< p
        v1=0;
    end
    
   %plots  
   
   subplot(3,1,1)
   plot([i-1 i],[v v1],'b-')
   %for average
   plot(i, Vav/i,'o')
   hold on
   title('average ',Vav/i)
   xlabel ('t')
   ylabel ('v')
   
   
   subplot(3,1,2)
   plot([x x1],[v v1],'b-')
   %for average
   plot(x1, Vav/i,'o')
   hold on
   xlabel ('x')
   ylabel ('v')
   
   
   subplot(3,1,3)
   plot([i-1 i],[x x1],'b-');
   hold on
   xlabel ('x')
   ylabel ('t')
  
   
  v=v1;
  x=x1;
  pause(0.01) % time delay
 
 
end    



