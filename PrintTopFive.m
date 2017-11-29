function [] = PrintTopFive(vec)
  [V, I] = sort(vec(:), 'descend');
  fprintf("+====+=======+=========+\n");
  fprintf("|Rank| Index |  Value  |\n");
  fprintf("+====+=======+=========+\n");
  for i=1:5
    fprintf("| %02d | % 4d  | %-2.4f  |\n", i,I(i), V(i));
  end
  fprintf("+====+=======+=========+\n");
end