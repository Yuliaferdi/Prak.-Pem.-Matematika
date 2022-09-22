clc; clear all; close all;
n=12;
B(1)=27;
F(1)=33;
for i=1:(n-1)
    B(i+1)=B(i)-0.1*F(i);
    F(i+1)=F(i)-0.1*B(i);
end
figure(1)
plot(1:n,B,'b*');
hold on;
plot(1:n,F,'r*');
hold off;
grid on;
legend('British', 'Spanish');
xlabel('stages');
ylabel('Unit of Ships');