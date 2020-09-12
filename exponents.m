function result = exponents(nFeatures, degree)
if(nFeatures<=1)
    result = degree;
else
    result = zeros(0, nFeatures);    
    for(i = degree:-1:0)
        rc = exponents(nFeatures - 1, degree - i);
        result = [result; i * ones(size(rc,1), 1), rc];
    end    
end