function predictedValue = hypFunction(x, betas)
  
  predictedValue = sigmoid(x * betas);
endfunction
