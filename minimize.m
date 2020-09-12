function betas = minimize(x, y, degree, lambda)
  x = mapFeature(x, degree);
  fprintf("Optimised betas using fminunc Octave's function:\n");
  betas = fminunc(@(b)(costFunction(x, y, b, lambda)), iniBetas(x), optimset('MaxIter', 400));
  %betas = fminsearch(@(b)(costFunction(x, y, b, lambda)), iniBetas(x))    
endfunction
