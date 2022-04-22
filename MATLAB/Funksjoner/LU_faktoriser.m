%Faktoresierer en matrise til dens L og U matrise

function [L, U] = LU_faktoriser(A)
    [n, m] = size(A);
    U = A;
    L = diag(ones(n,1));
    for j = 1:n-1                          
        for i = j+1:n 
            if abs(U(j,j)==0) 
                error('0 som pivotelement'); 
            end
            mult = U(i,j)/(U(j,j)); 
            L(i,j) = mult;
            for k = j:n
                U(i,k) = U(i,k) - (U(j,k) * mult);
            end
        end
    end
end

