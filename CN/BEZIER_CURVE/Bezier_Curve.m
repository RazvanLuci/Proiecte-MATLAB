function B = Bezier_Curve(P, t)
    n = size(P, 1) - 1; % Gradul curbei
    B = zeros(length(t), size(P, 2)); % Inițializează curba
    for i = 0:n
        coeff = nchoosek(n, i) * (1-t).^(n-i) .* t.^i; % Coeficienții Bézier
        B = B + coeff' * P(i+1, :); % Adaugă contribuția fiecărui punct de control
    end
end
