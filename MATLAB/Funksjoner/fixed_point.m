function y = fixed_point(f, x, ant_siffer)
%f = funksjonen
%x = startverdi
%ant_siffer = antall siffer nøyaktighet vi ønsker
margin = riktige_desimaler(ant_siffer);
xi = 1;
while(true)
    y=f(x);
    fprintf('x%d = %.9f\n',xi,y);
    xi=xi+1;
    if(abs(y-x) < margin) 
        break; 
    end
    x = y;
end
end

