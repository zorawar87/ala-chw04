function [PI] = Transition (A, alpha)
  [m,n] = size(A);
  P = zeros(n);
  for i=1:n
    thisCol = A(:,i);
    total = sum(thisCol);
    if total == 0
      P(:,i) = ones(n,1)/n;
    else
      P(:,i) = thisCol/total;
    end
  end
  PI = (1-alpha)*P + (alpha/n) *ones(n);
end
