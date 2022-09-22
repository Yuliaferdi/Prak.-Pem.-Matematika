clc; clear all; close all;
n=10;
O(1)=50;
T(1)=20;
for i=1:(n-1)
    O(i+1)=0.6*O(i)+0.3*T(i);
    T(i+1)=0.4*O(i)+0.7*T(i);
end
figure(1)
plot(1:n,O,'b*');
hold on;
plot(1:n,T,'r*');
hold off;
grid on;
legend('Orlando', 'Tampa');
xlabel('days');
ylabel('Unit of Cars');