function out = isPerfect(k)
sum = 1;
out = false;
for i=2:sqrt(k)
    if (mod(k,i) == 0)
            if(i*i~=k)
                sum = sum + i + k/i;
            else
                sum=sum+i;
            end
    end
end
if (sum == k && k != 1)
    out = true;
end
end

function [cnt, v] = PerfectNum(n)
  v = [];
  for p=2:n
    if isPerfect(p) == true
        v = [v p];
    end
  end
  cnt = length(v);
end
