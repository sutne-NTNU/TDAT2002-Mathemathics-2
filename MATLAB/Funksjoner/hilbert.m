%Oppretter en nXn Hilbert matrise, en nX1 b matrise og finner x matrisen

function x = hilbert(n) 
    H = zeros(n);
    for i=1:n
        for j=1:n
            H(i,j) = 1/(i+j-1);
        end
    end
    b = ones(n,1);
    x = tilbakesubstitusjon(gausselim([H b]));
end

