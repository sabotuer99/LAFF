function [ y_out ] = laff_copy(x, y)
  
  y_out = zeros(3,1);
  
  for i=1:3
    y_out( i ) = x(i);
  endfor
    
  return
  endfunction