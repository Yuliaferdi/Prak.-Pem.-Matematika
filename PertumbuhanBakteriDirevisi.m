clc; clear all; close all
n=18;
p=[9.6 18.3 29.0 47.2 71.1 119.1 174.6 257.3 350.7 441.0 513.3 559.7 594.8 ...
    629.4 640.8 651.1 655.9 659.6 661.8];
dp=[8.7 10.7 18.2 23.9 48.0 55.5 82.7 93.4 90.3 72.3 46.4 35.1 34.6 11.4 ...
    10.3 4.8 3.8 2.2];
figure(1); plot(0:n,p,'b*');
hold on; 
grid on; 
title('Growth in a yeast culture'); 
xlabel('Time in hours n'); 
ylabel('Yeast Biomass p_n');
pn(1)=p(1); 
for i=2:n
    pn(i)=pn(i-1)+0.00082*(665-pn(i-1))*p(i-1); 
end
figure(1) 
plot(1:n,pn,'r*'); 
hold off; 
legend('Observation','Predictions');