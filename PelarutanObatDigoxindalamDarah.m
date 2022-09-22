clc; clear all; close all;
a=[0.5 0.345 0.238 0.164 0.113 0.078 0.054 0.037 0.026];
da=[-0.155 -0.107 -0.074 -0.051 -0.035 -0.024 -0.017 -0.011];
figure(1);
plot(a(1:length(a)-1),da,'b*');
hold on;
n=length(a);
an(1)=a(1);
for i=2:n
  an(i)=0.69*an(i-1);    %keteranagn bawah
  dan(i-1)=-0.31*an(i-1);
end
an(n)=0;
dan(n)=0;
figure(1)
plot(an,dan,'r-');
hold off;
grid on;
xlabel('a_n');
ylabel('delta a_n');
title('Plot a_n vs delta a_n digoxin in patient bloodstrem');

%kemiringan M= Aan/an = -0.107/0.345 = -0.310
%Aan = -0.310*an
% a n+1 - an = -0.310*an
% a n+1 = 0.69 an

% a n+1 - an = -0.310*an
% a n+1 = -0.310*an + an
% a n+1 = an(-0.310+1)
%       = 0.69 an