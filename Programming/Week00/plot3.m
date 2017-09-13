t = linspace(0, pi/2, 1000);
f1 = 12;
f2 = 10;
y = cos(2*pi*f1*t) + cos(2*pi*f2*t);

r = 0.25 * randn(1,1000);
y = y + r;

figure
hold on
plot(t, y);

envelope = [2*cos(pi*(f1-f2)*t); 2*cos(pi*(f1-f2)*t-pi)];
plot(t, envelope);
axis tight;