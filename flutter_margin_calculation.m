%% AEROELASTICITY HOMEWORK 2.- FLUTTER MARGIN COMPUTATION
% TEAM 05.-
% Mario Barrantes Mellado - 100471762
% Héctor Boj Muñoz - 100495484
% Alejandra Mei Sangrador Cano - 100472588

clc; clear all; close all;

%% PARAMETERS OF PROBLEM
teamnumber = 5;
G1 = teamnumber*10^-3;
G2 = G1/2;

% Mode 1
v_1 = [23, 88, 169, 207];
w_1 = [5.65, 5.55, 5.6, 5.3];
scatter_w1 = [1, 2, 3, 4];    % in [%]
g_1 = G1.*[5/4, 3/2, 7/4, 2]; % damping (average)
scatter_g1 = [2, 4, 6, 8];    % in [%]

% Mode 2
v_2 = v_1;
w_2 = [5.1, 5.2, 5.4, 5.1];
scatter_w2 = scatter_w1;   % in [%]
g_2 = G2*[1/2, 3/4, 2, 1]; % damping (average)
scatter_g2 = scatter_g1;   % in [%]

figure
plot (v_1, w_1, o)
hold on
plot (v_2, w_2, o)

figure;
plot(v_1, w_1, 'bo', 'DisplayName', 'Mode 1');
plot(v_2, w_2, 'ro', 'DisplayName', 'Mode 2');
xlabel('Velocity [KCAS]');
ylabel('Frequency [Hz]');
grid on;
legend show;

