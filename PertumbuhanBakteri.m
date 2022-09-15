clc; clear all; close all;
n=10;
p=zeros(n,1);
dp=zeros(n,1);
p(1)=9.6;
for i=2:n
    p(i)=1.5*p(i-1);
    dp(i-1)=0.5*p(i-1); %0.5*Pn (penjelasan dibawah)
end
figure(1);
plot(p(1:n-1,1), dp(1:n-1,1), 'b*');
grid on;
title('Change in biomass vs biomass');
xlabel('Biomass p_n');
ylabel('Chamge in biomass p_{n+1}-p_n');

% APn=(Pn-1 - Pn)=k*Pn=0.5*Pn
% k=(y1-y2)/(x2-x1)=(48-23.9)/(119.1-71.1)=0.5