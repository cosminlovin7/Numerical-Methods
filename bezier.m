function bezier(x,y)
  i = 1;
  B_x = zeros();
  B_y = zeros();
  
  for t = 0 : 0.05 : 1
    P = casteljou(x,y,t);
    B_x(i) = P(1);
    B_y(i) = P(2);
    plot(B_x, B_y, 'b-s');
    axis([0.5, 4.5, 0.2, 2.1]);
    i = i + 1;
    pause(0.05);
  end
end
