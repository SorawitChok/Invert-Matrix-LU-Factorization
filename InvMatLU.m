function v = InvMatLU(A,n)
Ainv = [];
I = eye(n);
[L,U,P] = lu(A);
for i=1:n
    bhat = P*I(:,i);
    w = L\bhat;
    x = U\w;
    Ainv = [Ainv,x];
end
v = Ainv;
    

