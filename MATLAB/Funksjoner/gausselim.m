function M = gausselim(M)
    [n, m] = size(M); %n = rader, m = kolonner
    for j = 1:n-1                          
        for i = j+1:n         
            mult = M(i,j)/(M(j,j));       
            for k = j:m
                M(i,k) = M(i,k) - (M(j,k) * mult);
            end
        end
    end
end

