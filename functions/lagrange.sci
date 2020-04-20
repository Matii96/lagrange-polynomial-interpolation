function [result_vector] = lagrange(x_input, x_vector, y_vector)
  result_vector = [];
  for x_idx = 1:length(x_input)
    x = x_input(x_idx);
    result_vector(x_idx) = 0;
    for idx = 1:length(x_vector)
      // Phi(x)
      nominator = x - x_vector;
      nominator(idx) = [];
      denominator = x_vector(idx) - x_vector;
      denominator(idx) = [];
      
      // W(n)
      result_vector(x_idx) = result_vector(x_idx) + y_vector(idx) .* prod(nominator) ./ prod(denominator);
    end
  end
endfunction