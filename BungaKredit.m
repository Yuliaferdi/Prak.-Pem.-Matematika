clc; clear all; close all; 
n=250;
b=zeros(n,1); 
b(1)=80000; %initial condition
for i=1:(n-1)      
    b(i+1)=1.01*b(i)-880.87; 
end
figure(1); 
plot(1:n,b,'b-','LineWidth',2); 
axis([1 n 0 max(b)+1000]); 
grid on; 
xlabel('Month');  
ylabel('Loan value'); 
title('Home Mortgaging');