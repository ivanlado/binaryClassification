function cost = costFunction(x, y, betas, lambda)
  m = length(y);
  cost = (-y'*log(hypFunction(x, betas)) - (1-y)'*log(1-hypFunction(x, betas)))/m;
  cost = cost + (betas'(:,2:end)*betas(2:end,:))*(lambda/(2*m));

endfunction
