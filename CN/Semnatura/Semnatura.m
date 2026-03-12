% Semnătura LRG cu curbe Bézier

% Parametrul t pentru curbe
t = linspace(0, 1, 100);

% --- Litera L ---
% Segmentele pentru L: linie verticală și linie orizontală
P_L1 = [0, 0; 0, 4]; % Linie verticală
P_L2 = [0, 0; 3, 0]; % Linie orizontală

B_L1 = bezier_curve(P_L1, t);
B_L2 = bezier_curve(P_L2, t);

% --- Litera R ---
% Arcul de sus
P_R1 = [4, 4; 6, 5; 8, 4; 6, 2]; % Puncte pentru arc
B_R1 = bezier_curve(P_R1, t);

% Linia diagonală
P_R2 = [6, 2; 8, 0]; % Linie diagonală
B_R2 = bezier_curve(P_R2, t);

% --- Litera G ---
% Cercul parțial (partea de sus și deschidere)
P_G1 = [10, 4; 12, 5; 14, 3; 12, 0]; % Arc superior
P_G2 = [12, 0; 11, 1; 12, 2];        % Partea de jos, închidere

B_G1 = bezier_curve(P_G1, t);
B_G2 = bezier_curve(P_G2, t);

% --- Plotare ---
figure;
hold on;
axis equal;
grid on;

% Plotează litera L
plot(B_L1(:, 1), B_L1(:, 2), 'b-', 'LineWidth', 2);
plot(B_L2(:, 1), B_L2(:, 2), 'b-', 'LineWidth', 2);

% Plotează litera R
plot(B_R1(:, 1), B_R1(:, 2), 'r-', 'LineWidth', 2);
plot(B_R2(:, 1), B_R2(:, 2), 'r-', 'LineWidth', 2);

% Plotează litera G
plot(B_G1(:, 1), B_G1(:, 2), 'g-', 'LineWidth', 2);
plot(B_G2(:, 1), B_G2(:, 2), 'g-', 'LineWidth', 2);

title('Semnătura LRG cu curbe Bézier');
xlabel('X');
ylabel('Y');

hold off;

% --- Funcție Bézier ---
function B = bezier_curve(P, t)
    n = size(P, 1) - 1; % Gradul curbei
    B = zeros(length(t), 2); % Inițializează curba
    for i = 0:n
        B = B + nchoosek(n, i) * (1-t).^(n-i) .* t.^i * P(i+1, :);
    end
end
