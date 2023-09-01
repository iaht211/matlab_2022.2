function [cnt, v] = perfectNums(n)
    cnt = 0;
    v = [];
  for i = 2:n
    out = check(i);
    if out==1
      cnt++;
      v = [v i];
    endif
  end
end

function out = check(k)
  sum=1;
  for i = 2:sqrt(k)
    if mod(k, i) == 0
      if i*i==k
        sum+=i;
      else
        sum += (i + k/i);
      endif
    endif
  endfor
  if sum==k
    out = 1;
    else out = 0;
  endif

end
