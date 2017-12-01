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
    total = sum(thisCol);
    if total == 0
      P(:,i) = ones(n,1)/n;
    else
      P(:,i) = thisCol/total;
    end
  end
  PI = (1-alpha)*P + (alpha/n) *ones(n);
end