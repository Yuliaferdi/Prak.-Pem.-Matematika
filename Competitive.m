clc; clear all; close all;
k1=0.2;
k2=0.3;
k3=0.001;
k4=0.002;
n=30;
O(1)=149;
H(1)=201;
for i=1:(n-1)
    O(i+1)=(1+k1)*O(i)-k3*O(i)*H(i);
    H(i+1)=(1+k2)*H(i)-k4*O(i)*H(i);
end
figure(1);
plot(1:n,O,'b*')
hold on;
plot(1:n,H,'r*')
hold off;
grid on;
xlabel('Number of steps');
ylabel('Population');
legend('Owls','Hawk');
axis([0 30 0 max(ma(O),max(H))+10]);