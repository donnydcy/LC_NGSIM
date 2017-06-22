clear all
close all
clc

load ../data/lc_data_20s_withpoints

lc_len = length(lc_data);

for i = 1: lc_len
    temp = lc_data{i};
    pp   = points(i,:);
    lat  = temp.veh_s.x;
    lon  = temp.veh_s.y;
    figure(1);hold off;plot(lon,lat,'b.');hold on;
    plot(lon(pp(1)),lat(pp(1)),'o','MarkerFaceColor','g');
    plot(lon(pp(2)),lat(pp(2)),'o','MarkerFaceColor','r');
end