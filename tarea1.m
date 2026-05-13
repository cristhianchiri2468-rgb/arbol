% Simulación Formal de Dinámica de Población de Fibonacci
clc; clear; close all;

ciclos = 12;
f = zeros(1, ciclos);
f(1:2) = [1, 1];

for i = 3:ciclos
    f(i) = f(i-1) + f(i-2);
end

% Configuración de la Figura
figure('Color', [1 1 1]);

% Subplot 1: Crecimiento Exponencial
subplot(2,1,1);
stem(1:ciclos, f, 'filled', 'Color', [0 0.45 0.74], 'LineWidth', 1.5);
grid on;
title('Evolución Cuantitativa de Ramificaciones', 'FontSize', 12);
ylabel('Número de Ramas (f_n)');
xlabel('Ciclo de Crecimiento');

% Subplot 2: Convergencia a la Proporción Áurea
proporciones = f(2:end) ./ f(1:end-1);
subplot(2,1,2);
plot(2:ciclos, proporciones, '-o', 'Color', [0.85 0.33 0.1], 'MarkerFaceColor', [0.85 0.33 0.1]);
hold on;
line([2 ciclos], [1.618 1.618], 'Color', 'r', 'LineStyle', '--'); % Límite Phi
grid on;
title('Convergencia hacia el Número Áureo (\phi \approx 1.618)', 'FontSize', 12);
ylabel('Ratio f_n / f_{n-1}');
xlabel('Ciclo');
legend('Ratio calculado', 'Límite Teórico \phi');