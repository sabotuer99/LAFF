function result = laff_dot(x, y)
  
  %if params not correct vectors, fail
  if !isvector(x) || !isvector(y)
    result = 'FAILED';
    return
  end
  
  %if x and y diff length, fail
  if length(x) != length(y)
    result = 'FAILED';
    return
  end
  
  result = 0;
  for i=1:length(x)
    result = x(i) * y(i) + result;
  end
  
  return
end
  