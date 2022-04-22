function x = newton_MultiVariate( x , F , DF , TOL )
while (1)
    s = linsolve(DF(x),-F(x));
    if (max(abs(s)) < TOL)
        break;
    end
    x=x+s;
end
end
