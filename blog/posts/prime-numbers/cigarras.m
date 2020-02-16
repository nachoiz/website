clc; close all; clear all;

%% Tiempo de convivencia entre 2 especies de cigarras

tipo_a = [13];
tipo_b = [17];
tipo_x = []; % años en los que coinciden

for i = 2:30
    a = tipo_a(1)*i;
    b = tipo_b(1)*i;
    tipo_a(i) = a;
    tipo_b(i) = b;
end

j = 1;
for i = 1:length(tipo_a)
    ind = find(tipo_b == tipo_a(i));
    if (isempty(find(tipo_b == tipo_a(i))) == 0)
        tipo_x(j) = tipo_b(ind);
        j = j + 1;
    end
end

mat_a(1,:) = ones(1, length(tipo_a));
mat_a(2,:) = tipo_a;

mat_b(1,:) = ones(1, length(tipo_b));
mat_b(2,:) = tipo_b;

mat_x(1,:) = ones(1, length(tipo_x));
mat_x(2,:) = tipo_x;

%% Plot
stem(mat_a(2,:), mat_a(1,:), '.', 'MarkerSize', 15);
hold on
stem(mat_b(2,:), mat_b(1,:), '.r', 'MarkerSize', 15);
stem(mat_x(2,:), mat_x(1,:), 'xk', 'MarkerSize', 15);

axis([0, 300, 0.75, 1.25]); % hasta el año 300
set(gca,'ytick',[])
set(gcf, 'color', 'w');
set(gca,'FontSize',12)
set(gcf,'Position',[100 100 700 250])
title('Ciclos de vida cigarras');
% ylabel('Especie');
xlabel('años');
legend('Especie A','Especie B');
legend(['Especie A (ciclo: ' num2str(tipo_a(1)) ' años)'],['Especie B (ciclo: ' num2str(tipo_b(1)) ' años)']);
legend('boxoff');

% barh(stop)
% hold on
% barh(start,'w')