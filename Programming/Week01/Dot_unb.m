
% Copyright 2017 The University of Texas at Austin
%
% For licensing information see
%                http://www.cs.utexas.edu/users/flame/license.html 
%                                                                                 
% Programmed by: Troy Whorten
%                

function [ alpha_out ] = Dot_unb( alpha, xt, yt )

  [ xLt, xRt ] = FLA_Part_1x2( xt, ...
                                 0, 'FLA_LEFT' );

  [ yLt, yRt ] = FLA_Part_1x2( yt, ...
                                 0, 'FLA_LEFT' );

  alpha = 0;                               
                                 
  while ( size( xLt, 2 ) < size( xt, 2 ) )

    [ x0t, chi1, x2t ]= FLA_Repart_1x2_to_1x3( xLt, xRt, ...
                                             1, 'FLA_RIGHT' );

    [ y0t, psi1, y2t ]= FLA_Repart_1x2_to_1x3( yLt, yRt, ...
                                             1, 'FLA_RIGHT' );

    %------------------------------------------------------------%

    alpha = chi1 * psi1 + alpha;

    %------------------------------------------------------------%

    [ xLt, xRt ] = FLA_Cont_with_1x3_to_1x2( x0t, chi1, x2t, ...
                                             'FLA_LEFT' );

    [ yLt, yRt ] = FLA_Cont_with_1x3_to_1x2( y0t, psi1, y2t, ...
                                             'FLA_LEFT' );

  end

  alpha_out = alpha;


return
