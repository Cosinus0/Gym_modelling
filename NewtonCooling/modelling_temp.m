clear all
close all

#Time in minutes
x=[0:10:390]; 
#Data points
y=[79.6,60.9,51.1,44.9,40.3,36.8,34.0,31.7,30.1,28.7,27.5,26.5,25.7,24.4,23.9,23.4,23.1,22.8,22.6,22.4,22.3,22.2,22.1,21.8,21.6,21.4,21.2,21.1,20.9,20.8,20.7,20.6,20.5,20.4,20.3,20.2,20.2,20.1,20.1,20.1]; 

#Plot of data points
figure
plot(x,y,"*k")
axis([0 390 19 81])
title("Natural cooling - Ramen")
xlabel("Minutes")
ylabel("Temperature(Degrees)")
grid on

#Single log plot
figure
semilogy(x,y,"*k")
title("Single log plot of Natural cooling - Ramen")
xlabel("Minutes")
ylabel("ln(Temperature(Degrees))")
grid on

#Double log plot
figure
loglog(x,y,"*k")
title("Double log plot of Natural cooling - Ramen")
xlabel("ln(Minutes)")
ylabel("ln(Temperature(Degrees))")
grid on


%%

#Fitting
fitval = polyfit(x(2:40),log(y(2:40)),1);

#fitval holds two values for the straight line [ b , a]

logline = fitval(2) + fitval(1)*x(2:40);

figure
semilogy(x(2:40),y(2:40),"*k")
hold on
plot(x(2:40),logline)