function B = bezier_curve(P, t)
    n = size(P, 1) - 1; % Gradul curbei
    B = zeros(length(t), 2); % Inițializează curba
    for i = 0:n
        % Adăugăm contribuția fiecărui punct de control
        B = B + nchoosek(n, i) * (1-t).^(n-i)' .* (t.^i)' .* P(i+1, :);
    end
end
