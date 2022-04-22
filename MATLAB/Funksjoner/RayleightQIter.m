function [lam,u,x] = RayleightQIter(A,x_0,k) 
x = x_0;
Q=eye(size(A));
for i=1:k
	u=x/norm(x); % u = x/|x|
	lam=u'*A*u;  % lambda = u'*A*u
	As=A-lam*Q;  % As = a-lamda*I
	x=As\u;      % x = As/u
end 
end

