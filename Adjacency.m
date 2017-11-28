## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Adjacency (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftype

## Author: Zorawar Moolenaar <zoraw@blade>
## Created: 2017-11-27

function [A] = Adjacency (raw)
  [m,n] = size(raw);
  A = zeros(1000);
  for index=1:m
    #fprintf("changing (%03d,%03d) from %d to %d\n",raw(index,2),raw(index,1), A(raw(index,2)),1);
    A(raw(index,2),raw(index,1)) = 1;
  end
end