function z=f(r,a,n)
% Lab #2 - Ex2.b
    e=0:1:n;
    R=r.^e;
    z=a*sum(R);
end