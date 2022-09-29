clc; clear all; close all;
n=12;
S(1)=1000;
U(1)=1000;
A(1)=2000;
for i=1:(n-1)
    S(i+1)=0.75*S(i)+0.2*U(i)+0.4*A(i);
    U(i+1)=0.05*S(i)+0.6*U(i)+0.2*A(i);
    A(i+1)=0.2*S(i)+0.2*U(i)+0.4*A(i);
end
figure(1);
plot(1:n,S,'b-*');
hold on;
plot(1:n,U,'r-*');
plot(1:n,A,'g-*');
hold off;
grid on;
xlabel('Time');
ylabel('Number of Passengers');
legend('US Airways','United Airlines','American Airlines')
axis([0 23 0 max(max(max(S),max(U)),max(A))+100]);