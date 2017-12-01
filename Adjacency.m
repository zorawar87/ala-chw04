function [A] = Adjacency (raw)
  [m,n] = size(raw);
  A = zeros(max(raw(:));
  for index=1:m
    A(raw(index,2),raw(index,1)) = 1;
  end
end
