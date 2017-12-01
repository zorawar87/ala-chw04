function [] = PrintTopFive(vec)
  N= min(numel(vec),5);
  [V, I] = sort(vec(:), 'descend');
  fprintf("+====+=======+=========+\n");
  fprintf("|Rank| Index |  Value  |\n");
  fprintf("+====+=======+=========+\n");
  for i=1:N
    fprintf("| %02d | %04d  | %-2.4f  |\n", i,I(i), V(i));
  end
  fprintf("+====+=======+=========+\n");
end