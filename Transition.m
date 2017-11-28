## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Adjacency (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftype

## Author: Zorawar Moolenaar <zoraw@blade>
## Created: 2017-11-27

function [PI] = Transition (A, alpha)
  [m,n] = size(A);
  P = zeros(n);
  for i=1:n
    thisCol = A(:,i);
    if norm(thisCol) == 0
      P(:,i) = 1/n*ones(n,1);
    else
      P(:,i) = 1/norm(thisCol) * thisCol;
    end
  end
  PI = (1-alpha)*P + (alpha/n) *ones(n);
end