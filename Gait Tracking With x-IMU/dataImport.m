clear;
data = readtable('D:\mustafa\Masters-NYU\ms_project\test_data\straightline_perpendicular_wall.txt');

gyrX = table2array(data(:,1));
gyrY = table2array(data(:,2));
gyrZ = table2array(data(:,3));

accX = table2array(data(:,4));
accY = table2array(data(:,5));
accZ = table2array(data(:,6));

magX = table2array(data(:,7));
magY = table2array(data(:,8));
magZ = table2array(data(:,9));

% dt = table2array(data(:,10));
dt = 50/1000;
time = zeros(length(accX),1);

for i = 1:length(time)
    time(i+1,:) = time(i) + dt;
end

time = time(1:end-1);
