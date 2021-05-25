function [Q, R] = Householder(A)
  H = eye(size(A)(1));
  for k = 1 : min(size(A)(1) - 1, size(A)(2))
    v = zeros(size(A)(1) , 1);
    v(k : size(A)(1) , 1)=A(k : size(A)(1) , k);
    vp = v; 
    vp(k) = vp(k) + norm(v);
    Hp = (eye(size(A)(1)) - 2 * ((vp * vp') / (vp' * vp)));
    A = Hp * A;
    H = Hp * H;
  endfor
  R = A;
  Q = H';
endfunction