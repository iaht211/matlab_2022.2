  function [cnt, v] = findPerfectNumbers(n)
    v = [];
    cnt = 0;
    for i = 2:n
      out = check(i);
      if out == 1
        v = [v i];
        cnt++;
      endif
    endfor
  endfunction

  function out = check(k)
    sum = 1;
    for i = 2:sqrt(k)
       if mod(k,i)==0
         if i * i ~= k
           sum += (i + k/i);
          else
           sum += i;
         endif
       endif
    endfor
    if sum==k
      out = 1;
     else out = 0;
    endif
  endfunction

