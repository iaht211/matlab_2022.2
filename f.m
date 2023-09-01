function out = f(n)
  out = 0;
  if mod(n, 2)==0
    for i=1:n
      out = out + i^2;
    endfor
  else
    for i=1:n
      out = out + i^3;
    endfor
  end
