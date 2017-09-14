function result = laff_norm2(x)
  
  %if params not correct vectors, fail
  if !isvector(x)
    result = 'FAILED';
    return
  end
  
  %result = 0;
  %for i=1:length(x)
  %  result = x(i) * x(i) + result;
  %end
  result = sqrt(laff_dot(x,x));
  
  return
end
  