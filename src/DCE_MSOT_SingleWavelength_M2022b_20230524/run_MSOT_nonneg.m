%% run DCE MSOT Single Wavelength
%% Clear Workspace and define pathnames

clearvars; clc; close all;
Starting_Directory=pwd;

% Add MSOT MAtlab library to path 
% This library was created by iThera
addpath( genpath('.') )
javaaddpath .\MSOTBeans\xbean.jar %%AK
javaaddpath .\MSOTBeans\msotbeans.jar %%AK

%% Identify the folder paths

disp('------------------------------');
disp('DCE - MSOT - Single Wavelength');
disp('------------------------------');

disp('Select the directory containing the msot file data ');
DIR=uigetdir;
cd(DIR)
msot_name = dir ('*.msot');
msot_file= fullfile(DIR, msot_name.name);

datainfo = loadMSOT(msot_file);
X = ['The selected file is: ',datainfo.Name];
disp(X);
prompt = 'Do you want to continue? Y/N [Y]: ';
str = input(prompt,'s');
if str == 'N'
    return;
end

disp('Select the directory for saving the final results ');
saving_DIR=uigetdir; 
run_DCE_MSOT_RECON (msot_file, saving_DIR);

    