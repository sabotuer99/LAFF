function [ x_out ] = laff_scal(alpha, x)
  
  x_out = x;
  
  if !isscalar(alpha)
    x_out = 'FAILED';
    return
  end
  
  if !isvector(x)
    x_out = 'FAILED';
    return
  end
  
  [m_x, n_x] = size(x);
  length_x = m_x + n_x - 1;
  
  for i = 1:length_x
    x_out(i) = alpha * x(i);
  end
  
  return
  
end