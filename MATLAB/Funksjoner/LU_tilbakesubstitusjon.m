%Faktoresierer en matrise til dens L og U matrise og bruker 2-stegs
%tilbakesubstitusjon til å finne en løsning.

function x = LU_tilbakesubstitusjon(A, b)
    [L, U] = LU_faktoriser(A)
    [n, m] = size(A);
    
    %1. løser Lc = b for c
    c=zeros(n,1);
    c(1)=b(1);
    for i = 2:n
        c(i)=b(i)-L(i,1:i-1)*c(1:i-1);
    end
    
    %2. løser Ux = c for x
    x=zeros(n,1);
    x(n)=c(n)/U(n,n);
    for i = n-1:-1:1
       x(i)=(c(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
    end
end

