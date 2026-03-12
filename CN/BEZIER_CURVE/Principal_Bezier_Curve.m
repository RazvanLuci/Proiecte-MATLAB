t = linspace(0, 1, 100);

P_L1 = [0, 0; 0, 3]; 
P_L2 = [0, 0; 1.5, 0]; 
B_L1 = bezier_curve(P_L1, t);
B_L2 = bezier_curve(P_L2, t);


P_R1 = [2, 0; 2, 3]; 
P_R2 = [2, 3; 3, 2.5; 3, 1]; 
P_R3 = [3, 1; 4, 0]; 
P_R4 = [2, 1.5; 3, 1]; 
B_R1 = bezier_curve(P_R1, t);
B_R2 = bezier_curve(P_R2, t);
B_R3 = bezier_curve(P_R3, t);
B_R4 = bezier_curve(P_R4, t);



P_6_Arc = [5, 0; 3.5, 2; 5, 3];
P_6_Vertical = [5, 0; 5, 2]; 
P_6_Horizontal = [5, 0; 5, 0];
B_6_Arc = bezier_curve(P_6_Arc, t);
B_6_Vertical = bezier_curve(P_6_Vertical, t);
B_6_Horizontal = bezier_curve(P_6_Horizontal, t);


P_oblic = [0, 1.5; 5, 2.5]; 
B_oblic = bezier_curve(P_oblic, t);

P_oblic1 = [0, 1.45; 5, 2.45];
B_oblic1 = bezier_curve(P_oblic1, t);

P_oblic2 = [0, 1.4; 5, 2.4];
B_oblic2 = bezier_curve(P_oblic2, t);

P_oblic3 = [0, 1.35; 5, 2.35];
B_oblic3 = bezier_curve(P_oblic3, t);

theta = linspace(0, 2*pi, 100);
a = 1.5; 
b = 0.4; 
x = a * cos(theta); 
y = b * sin(theta);
B_oval = [x' + 3, y' + 2]; 

figure;
hold on;
axis equal;
grid on;

plot(B_L1(:, 1), B_L1(:, 2), 'k-', 'LineWidth', 3); 
plot(B_L2(:, 1), B_L2(:, 2), 'k-', 'LineWidth', 3); 

plot(B_R1(:, 1), B_R1(:, 2), 'k-', 'LineWidth', 3); 
plot(B_R2(:, 1), B_R2(:, 2), 'k-', 'LineWidth', 3); 
plot(B_R3(:, 1), B_R3(:, 2), 'k-', 'LineWidth', 3); 
plot(B_R4(:, 1), B_R4(:, 2), 'k-', 'LineWidth', 3); 

plot(B_6_Arc(:, 1), B_6_Arc(:, 2), 'k-', 'LineWidth', 3); 
plot(B_6_Vertical(:, 1), B_6_Vertical(:, 2), 'k-', 'LineWidth', 3); 
plot(B_6_Horizontal(:, 1), B_6_Horizontal(:, 2), 'k-', 'LineWidth', 3); 

plot(B_oblic(:, 1), B_oblic(:, 2), 'k-', 'LineWidth', 3); 
plot(B_oblic1(:, 1), B_oblic1(:, 2), 'k-', 'LineWidth', 3); 
plot(B_oblic2(:, 1), B_oblic2(:, 2), 'k-', 'LineWidth', 3);
plot(B_oblic3(:, 1), B_oblic3(:, 2), 'k-', 'LineWidth', 3); 

plot(B_oval(:, 1), B_oval(:, 2), 'k-', 'LineWidth', 0.5); 
title('Semnatura');
xlabel('X');
ylabel('Y');

hold off;

function B = bezier_curve(P, t)
    n = size(P, 1) - 1; 
    B = zeros(length(t), size(P, 2)); 
    for i = 0:n
        coeff = nchoosek(n, i) * (1-t).^(n-i) .* t.^i; 
        B = B + coeff' * P(i+1, :); 
    end
end
