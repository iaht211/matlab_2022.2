f = @(y, t) -20*y + 7*exp(-0.5*t)
h = 0.001;
t = 0:h:0.1;
y = zeros(size(t));
y(1) = 5;

for i = 2:length(t)
  y(i) = y(i-1) + h*f(y(i-1), t(i-1));
end
plot(t,y,'LineWidth', 3);
