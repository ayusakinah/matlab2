function [y_next] = propagates(y_current, y_previous)
length=0.4;
F=400;
m=0.003;
s=1; 
v=F*length/m;
M=size(y_current,2); 
y_next=zeros(1,M);
i=2:1:M-1; 
y_next(i) = 2*(1-s/v)*y_current(i)-y_previous(i)+s/v*(y_current(i+1)+y_current(i-1));
end;