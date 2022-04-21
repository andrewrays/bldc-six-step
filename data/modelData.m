%% Control method
DEG120     = Simulink.Variant('ControlMethod == 1');
DEG150     = Simulink.Variant('ControlMethod == 2');
DEG180     = Simulink.Variant('ControlMethod == 3');
DEG120_180 = Simulink.Variant('ControlMethod == 1 || ControlMethod == 3');
ControlMethod = eval(get_param('bldcControl/Parameters/Control method', 'Value'));

% Load truth tables
load('truthTable150d.mat');
load('truthTable120d.mat');
load('truthTable180d.mat');

%% Wound type
DELTA_WOUND = Simulink.Variant('WoundType == 1');
WYE_WOUND = Simulink.Variant('WoundType == 2');
WoundType = eval(get_param('bldcControl/Parameters/Wound type', 'Value'));

%% Model parameters
Ts = 5e-6; % Sample time

%% Motor parameters
motor.Us = 24;           % Supply Voltage, V
motor.R  = 2.25;         % Stator resistance, Ohm   
motor.L  = 0.0032;       % Stator inductance, H
motor.Cm = 0.03397;      % Torque constant, N*m/A           
motor.Ce = 0.0258;       % Back-EMF constant, V*s/rad          
motor.J  = 2.4e-6;       % Rotor inertia, kg*m^2
motor.Bm = 0;            % Rotor damping, N*m*s/rad
motor.p  = 4;            % Number of pole pairs

%% Inverter parameters
inverter.f     = 20000; % Switching frequency, Hz
inverter.Rds   = 4e-2;  % Drain-source on resistance, Ohm
inverter.Goffs = 1e-6;  % Off-state conductance, S
inverter.Uthr  = 0.5;   % Threshold voltage, V
inverter.Udf   = 0.8;   % Integral diodes forward voltage, V
inverter.Ron   = 1e-3;  % Integral diodes on resistance, Ohm
inverter.Goff  = 1e-5;  % Integral diodes off conductance, S
inverter.Csn   = 1e-7;  % Snubber capacitance, F
inverter.Rsn   = 1e4;   % Snubber resistance, Ohm



