function [y_next] = propagate_terikat3(y_current, y_previous,h);
  r=1;
  dt=3.33e-5;
  M=size(y_current,3);
  y_nanti=zeros(1,M);
  i=2:1:M-1;
  y_next(i) = 1/(1+h*dt)*[2*(1-r^2)*y_current(i)-(1-h*dt)*y_previous(i)+r^2*(y_current(i+1)+y_current(i-1))];
end