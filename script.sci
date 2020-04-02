getd('functions');
xdel(winsid());
clc;

x = [-3 -1 0 1 3 4];
y = cos(x);

// Lagrange
x2 = linspace(min(x), max(x), 100);
y2 = [];
for i = 1:length(x2)
  y2(length(y2)+1) = lagrange(x2(i), x, y);
end
y3 = cos(x2);

// Draw results
a=get('current_axes');
a.data_bounds=[min(x)-1, min(y)-1; max(x)+1, max(y)+1];
title('Lagrange demonstration');
plot(x, y, '*r', x2, y3, x2, y2);
legend(['cos(x) - nodes'; 'cos(x)'; 'lagrange(x)']);