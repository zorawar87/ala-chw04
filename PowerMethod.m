function [vec, lam] = PowerMethod (A, x_0, k)
  x=x_0;
  for i=1:k
    y=A*x;
    n=sum(y);
    x=y/n;
  end
  vec=x;
  lam=n;
end
