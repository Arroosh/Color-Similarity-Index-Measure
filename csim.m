% This is the main funstion it requires
% 1. dominant_color
% 2. norm_cumulative_hist
% 3. plotting.m
% 4. distances.m

%clear all;
%clc;
function [CSIM1]= csim(original,auto)
% original= imread('11.png');
% auto= imread('1gray.png');
%testimg= imread('ours_fullres.png');

[X1,X2,X3]=dominant_color(original);
[Y1,Y2,Y3]=dominant_color(auto);
%[Z1,Z2,Z3]=dominant_color(testimg);

Ctrs = [0 :1/10:1];

fCDF11=norm_cum_hist(Ctrs,X1);
fCDF12=norm_cum_hist(Ctrs,X2);
fCDF13=norm_cum_hist(Ctrs,X3);

fCDF21=norm_cum_hist(Ctrs,Y1);
fCDF22=norm_cum_hist(Ctrs,Y2);
fCDF23=norm_cum_hist(Ctrs,Y3);

%fCDF31=norm_cum_hist(Ctrs,Z1);
%fCDF32=norm_cum_hist(Ctrs,Z2);
%fCDF33=norm_cum_hist(Ctrs,Z3);

%plotting(Ctrs,fCDF11,fCDF12 ,fCDF13 ,fCDF21 ,fCDF22 ,fCDF23, fCDF31, fCDF32, fCDF33);

[AH,AS,AY]= distances(fCDF11,fCDF21, fCDF12, fCDF22,fCDF13, fCDF23);
product1 = AH*AS*AY;
CSIM1= nthroot(product1,3);

% [AH,AS,AY]= distances(fCDF11,fCDF31, fCDF12, fCDF32, fCDF13, fCDF33);
% product2 = AH*AS*AY;
% CSIM2= nthroot(product2,3)

%   K = [0.05 0.05];
%   window = ones(8);
%   L = 100;
% [x,y,z]=size(original);
% [a,b,c]=size(auto);
% if x ~=a || y~=b
%     auto=imresize(auto, [x,y]);
% end
% [mssim1] = ssim_index(original,auto, K, window, L);
%[mssim2] = ssim_index(original,testimg, K, window, L);
end





























