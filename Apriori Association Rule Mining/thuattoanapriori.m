clc;
clear all;
close all;
TT = readtable('fpt_branch3.xlsx','Range','A1:A10');
T = table2cell(TT);

MST=0.22;   % Minimum Support Threshold

MCT=0.6;    % Minimum Confidence Threshold

[FinalRules, Rules]=Apriori(T,MST,MCT);

%% Results

disp('Final Rules:');
disp(' ');
DisplayRules(FinalRules);
disp(' ');