clc;
clear all;
close all;

%% Load Data

% data=load('mydata');
% T=data.T;

%% Dang 

%T= {[1,2,3];[1,2,3];[2,3];[1,2,3];[1,3];[2,3];[1,3];[1,2,3];[1,2,3]};
%T= {[1,2,5];[2,4];[2,3];[1,2,4];[1,3];[2,3];[1,3];[1,2,3,5];[1,2,3]};
TT = readtable('fpt_branch3.xlsx','Range','H1:H10');
T = table2cell(TT);

MST=0.22;   % Minimum Support Threshold

MCT=0.6;    % Minimum Confidence Threshold

[FinalRules, Rules]=Apriori(T,MST,MCT);

%% Results

disp('Final Rules:');
disp(' ');
DisplayRules(FinalRules);
disp(' ');
