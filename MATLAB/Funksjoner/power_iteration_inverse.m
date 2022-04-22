function [lam,u] = power_iteration_inverse(A,x,s,k) 
As=A-s*eye(size(A));
for i=1:k
	u=x/norm(x); 
	x=(As)\u; 
	lam=u'*x;
end
lam=1/lam+s; u=x/norm(x);
end

