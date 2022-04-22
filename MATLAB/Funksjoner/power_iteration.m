function [lam,u] = power_iteration( A , u0 , k) 
for i=1:k
	u=u0/norm(u0); 
	u0=A*u; 
	lam=u'*u0; 
end 
u=u0/norm(u0);
end

