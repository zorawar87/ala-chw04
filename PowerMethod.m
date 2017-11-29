## -*- texinfo -*- 
## @deftypefn {} {@var{vMax, lMax} =} PowerMethod (@var{A}, @var{x0}, @var{k})
##
## @seealso{}
## @end deftypefn

## Author: Zorawar Moolenaar <zorawar87@gmail.com>
## Created: 2017-11-27

function [vec, lam] = PowerMethod (A, x_0, k)
  x=x_0;
  for i=1:k
    y=A*x;
    n=norm(A*x);
    x=y/n;
  end
  vec=x;
  lam=n;
end
