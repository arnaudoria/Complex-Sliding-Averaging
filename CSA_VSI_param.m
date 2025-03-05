%% Complex sliding averaging control for three-phase power converters

%{ 
File Name: TIE_cSMC_VSI_param.m
Authors: Arnau Dòria-Cerezo
         Pau Boira-Pujol
         Victor Repecho
         Domingo Biel
Description: Run file for "TIE_cSMC_VSI.slx".
Last Update: 03/03/2025
%}

% Clear
clc; clear;

% Reference voltage (peak and frequency)
Vref = 100;
VrefFreq = 60;

% Slope for reference changes
slope = 100;

% Derivative and integral gains
k = 2e-4;
ki = 94.6;

% Clock frequency
F_dsp = 200e6;
T_dsp = 1/F_dsp;

% PWM frequency
Fs_1 = 100000;  
Ts_1 = 1/Fs_1;
PWM_timer_123 = int32(F_dsp/(2*Fs_1));

% Dead time
dead_time_us = 1.2e-6;
dead_time = dead_time_us*F_dsp;

% Zero duty cycle
d0 = 0;

% Bus software protection
bus = 400;









