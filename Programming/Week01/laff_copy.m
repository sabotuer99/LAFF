function [ y_out ] = laff_copy(x, y)
  
  [ m_x, n_x ] = size(x);
  [ m_y, n_y ] = size(y);
  y_out = zeros(m_y,n_y);
  
  %if either not a vector, fail
  if(m_x > 1 && n_x > 1) || (m_y > 1 && n_y > 1)
    y_out = 'FAILED';
    return
  end
  
  len_x = m_x + n_x - 1;
  len_y = m_y + n_y - 1;
  
  %if diff size, fail
  if( len_x != len_y )
    y_out = 'FAILED';
    return
  end
  
  %if same size but diff shape, transpose
  x_ = x;
  if(m_x  !=  m_y)
    x_ = x';
  end
  
  for i=1:len_x
      y_out(i) = x_(i);
  end
    
  y = y_out;
    
  return
  endfunction