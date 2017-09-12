%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if rem(ii,2) == 1
        disp(int2str(ii)) 
end
end 
% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 
for ii = 1:2:20
    disp(int2str(ii)) 
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)
disp(num2str((1:2:20)'))

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 
for ii = 1:100
    z(ii) = ii*ii;
end

ii = 1:100 ;
z(ii) = ii.*ii

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

z=5050 

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
    disp(num2str(z(ii)))
end

z(ii) =  sqrt(xx(ii,1).*xx(ii,1)+xx(ii,2).*xx(ii,2))


% d. what is the formula in c computing?
% distance formula 

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.
x = linspace(0,4*pi,100)
y1 = sin(x)
y2 = cos(x) 
plot(x,y1,'r--', x,y2, 'b')


%b. repeat the above but where each graph is in a different subplot in the
% same figure. 
b1=subplot(2,1,1)
b2=subplot(2,1,2)
x = linspace(0,4*pi)
y1 = sin(x)
y2 = cos(x) 
plot(b1,x, y1,'r--')
plot(b2,x,y2, 'b')

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
figure
scatter(xy_dat(:,1),xy_dat(:,2))
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
c = fluor;
sz = 10;
figure
scatter(xy_dat(:,1),xy_dat(:,2),sz,c,'filled')
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command