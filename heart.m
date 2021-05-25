function heart()
  x = [1 1 2 2];
  y = [1.5 2 2 1.5];
  bezier(x,y);
  hold on;
  
  x = [2 2 3 3];
  y = [1.5 2 2 1.5];
  bezier(x,y);
  hold on;
  
  x = [3 2.7 2];
  y = [1.5 0.75 0.5];
  bezier(x,y);
  hold on;
  
  x = [2 1.3 1];
  y = [0.5 0.75 1.5];
  bezier(x,y);
  hold on;
endfunction
