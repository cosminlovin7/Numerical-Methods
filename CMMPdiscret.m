function [coef] = CMMPdiscret(n, pondere, x, fx)

    % coef reprezinta coeficientii polinomului
    % de grad n
    coef = zeros(n+1, 1);
    vectorLiber = zeros(n+1, 1);
    A = zeros(n+1, n+1);
    
    for i = 0:n        
        vectorLiber(i+1) = sum(pondere*x.^i.*fx);
    end
    
    for i = 1:n+1
        for j = i:n+1
        
            A(i, j) =  sum(pondere.*x.^(i-1).*x.^(j-1));
            A(j, i) = A(i, j);
            
        end
    end
    disp(A);
    coef = inv(A) * vectorLiber;
    
    
end

