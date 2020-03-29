function [value] = lagrange(x, x_vector, y_vector)
  value = 0;
  for idx = 1:length(x_vector)
    // Phi(x)
    nominator = x - x_vector;
    nominator(idx) = [];
    denominator = x_vector(idx) - x_vector;
    denominator(idx) = [];
    
    // W(n)
    value = value + y_vector(idx) .* prod(nominator) ./ prod(denominator);
  end
endfunction