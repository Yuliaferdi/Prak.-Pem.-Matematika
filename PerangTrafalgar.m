clc; clear all; close all;
n1=5;
B1(1)=13;
F1(1)=3;
for i=1:(n1-1)
    B1(i+1)=B1(i)-0.05*F1(i);
    F1(i+1)=F1(i)-0.05*B1(i);
end

n2=16;
B2(1)=B1(n1)+14;
F2(1)=F1(n1)+17;
for i=1:(n2-1)
    B2(i+1)=B2(i)-0.05*F2(i);
    F2(i+1)=F2(i)-0.05*B2(i);
end

n3=18;
B3(1)=B2(n2)+0;
F3(1)=F2(n2)+13;
for i=1:(n3-1)
    B3(i+1)=B3(i)-0.05*F3(i);
    F3(i+1)=F3(i)-0.05*B3(i);
end

figure(2);
B=[B1 B2 B3];
F=[F1 F2 F3];
plot(1:n1+n2+n3, B, 'r*');
hold on;
plot(1:n1+n2+n3, F, 'b*');
hold off;
grid on;
legend('British','French');
xlabel('stages')
ylabel('Unit of Ship')