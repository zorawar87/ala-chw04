## -*- texinfo -*- 
## @deftypefn {} {@var{vMax, lMax} =} PowerMethod (@var{A}, @var{x0}, @var{k})
##
## @seealso{}
## @end deftypefn

## Author: Zorawar Moolenaar <zoraw@blade>
## Created: 2017-11-27

function [vMax, lMax] = PowerMethod (A, x_0, k)
  vMax = x_0;
  for i=1:k
    lMax = vMax'*A*vMax / (vMax'*vMax)
    # calculate vector product 
    vMax = A*vMax;
    vMax = vMax / norm(vMax);
  end
end
