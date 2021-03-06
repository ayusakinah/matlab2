clear;
length=0.4;
iterasi=1500;
F=800;
m=0.003;
x=length/F:length/F:length;
x_scale=1:1:F;
v=F*length/m;
initial_position=exp(-v.*(length-x).^2);
y_current =initial_position;
y_previous = initial_position;
for time_step = 1:iterasi;
[y_next]=propagates(y_current, y_previous);
y_previous=y_current;
y_current=y_next;
clf;
plot(x_scale/F, y_current,'r');
title('Waves on a string - fixed ends');
xlabel('distance');
ylabel('Displacement');
hold on;
drawnow;
end;