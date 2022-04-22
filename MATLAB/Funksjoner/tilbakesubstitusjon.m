%Tilbakesubstituerer en ferdig gausseliminert matrise, matrisen må
%inneholde resultatmatrisen b
%løser Ax = b

function x = tilbakesubstitusjon(Ab)
    [n,m] = size(Ab);
    b=Ab(:,m);  %sista rad i A = resultatmatrisen
    x(n,1) = b(n)/Ab(n,n);
    for i = n-1: -1:1
        x(i) = (b(i)-Ab(i,i+1:n)*x(i+1:n,1))/Ab(i,i);
    end
end
