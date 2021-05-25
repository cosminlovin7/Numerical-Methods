function [X,l] = deflatie(A, tol, max_steps)
  steps = 0;
  X = [];
  l = [];
  AO = A;
  n = length(A);
  for i = 1 : n - 1
    [x_b, l_i] = MPD(A, tol, max_steps);
    [x_i, l_i] = MPID(AO, tol, max_steps, l_i);
    X = [X, x_i];
    l = [l, l_i];
    v = x_b;
    v(1) += -sign(x_b(1)) * norm(x_b);
    H = eye(n - i + 1) - 2 * (v*v')/(v'*v);
    A = H' * A * H;
    disp(A);
    A = A(2:end, 2:end);
  endfor
  l = [l A(end,end)];
  [x_i, l_i] = MPID(AO, tol, max_steps, l(end));
  X = [X, x_i];
endfunction
