# Six Step Commutation of a BLDC Motor

## Description

MATLAB Project contains a model of six step (trapezoidal) commutation technique
used to control three-phase BLDC motor and required scripts.  
The model allows you to explore the main motor and control system characteristics
for closed-loop control system design. 

## Features

- Support of three conduction modes: 120 degree, 150 degree, and 180 degree
- Support of three commutation modes: nonsymmetrical (up and down), alternative
- Support of different wound types: wye and delta
- The following motor characteristics can be explored: speed, angle, stator currents,
  phase-to-ground and phase-to-phase voltages, current of the supply voltage sourse
- The following digital signals can be explored: Hall sensors signals and switching devices 
  control signals

## Requirements

- MATLAB
- Simulink
- Simscape
- Simscape Electrical

Note: the project was created with MATLAB R2021b version.

## Brief theory

### Commutation technique

The control system is based on six-step commutation technique
which uses 120 degree, 150 degree, and 180 degree conduction modes.

This control is described with the thuth table of 5 logical variables:
1. DR (DiRection) is direction of the motor rotation
   (0 - forward direction, 1 - inverse direction);
2. H - Hall sensors signals;
3. PR (PRoportion) determines the loading of switches
   (PWM-based variable);
4. SP (SPeed) is relative speed (PWM-based variable).

When CM = 0, PR = 0 and lower switches are loaded more than
upper ones. When CM = 100, PR = 1 and upper switches are loaded
more than lower ones. When CM = 50, PR = 0.5, it means that
upper and lower switched are loaded uniformly during the commutation
interval.

The commutation modes are called nonsymmentrical (down), 
nonsymmentrical (up), and alternative, respectively. 

The truth tables providing conduction modes are located in `data` folder.  