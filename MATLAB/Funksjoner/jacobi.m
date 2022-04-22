%oppretter matrisene i henhold til oppgaven av størrelse nxn, og utførere
%deretter jakobi og finner fremover og bakoverfeilen til svaret vi får

function [ steg , fremoverfeil , bakoverfeil ] = jacobi(n) 
    D = spdiags(3*ones(n,1),0,n,n);
    L = spdiags(-ones(n,1),-1,n,n); 
    U = spdiags(-ones(n,1),1,n,n); 
    A = L+D+U;
    b = ones(n,1); 
    b([1,n]) = [2,2];
    x = zeros(n,1); 
    xcorrect = ones(n,1); 
    steg = 0;
    while (1)
        steg=steg+1;
        x = D\(b-(L+U)*x);
        if(max(abs(x-xcorrect))<0.5e-6) 
            break;
        end
    end
    fremoverfeil = max(abs(x-xcorrect));
    bakoverfeil = max(abs(A*x-b)); 
end

