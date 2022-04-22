function res = newton(f, fd, x, ant_siffer)
%f = funksjonen
%fd = deriverte av f
%x = startverdi
%ant_siffer = antall siffer nøyaktighet vi ønsker
xi = 0;
if(x == 0) x = 1; end
margin = riktige_desimaler(ant_siffer);
while(not(fd(x) == 0))
    newx = x - f(x)/fd(x);
    fprintf("x%d = %.9f\n",xi,x)
    if(abs(newx - x) < margin);
        res = newx;
        break;
    end
    x = newx; xi = xi+1;
end
end

