%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPML115
% Project Title: Apriori Algorithm for Association Rule Mining
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

clc;
clear;
close all;


TT = readtable('fpt_branch3.xlsx','Range','L1:L10');%fpt_branch3.xlsx’,’Range’, ‘J1:J10’
T = table2cell(TT);
MST=0.22;   % Minimum Support Threshold

MCT=0.6;    % Minimum Confidence Threshold

[FinalRules, Rules]=Apriori(T,MST,MCT);

%% Results

disp('Final Rules:');
disp(' ');
DisplayRules(FinalRules);
disp(' ');
