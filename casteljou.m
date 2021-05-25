function [Punct] = casteljou(x,y,t)
  n = length(x);
  P = [];
  
  %plot(x, y, 'k-o');
  %legend('puncte de control');
  %hold on;
  %axis([0.5, 4.5, 0.2, 2.1]);
  
  j = 1;
  k = 3;
  aux = n - 1;
  for i = 1 : n
    P(1,i) = x(i);
    P(2,i) = y(i);
  end
  
  while j != n 
    for i = 1 : aux
      P(k,i) = (1-t) * P(k - 2, i) + t * P(k - 2, i + 1);
      P(k+1,i) = (1-t) * P(k - 1, i) + t * P(k - 1, i + 1);
    end
    k = k + 2;
    j = j + 1;
    aux = aux - 1;
  end
  
  Punct = [];
  Punct = [Punct P(end - 1, 1) P(end, 1)];
  
    
    
end
