# Iteration

def fibs(n)
  ans = [0, 1]
  if n < 3
    return ans[0...n]
  end
  for i in 2...n do
    ans << ans[i-2] + ans[i-1]
  end
  return ans
end

def fibs_rec(n)
  if n < 3
    case n
    when 1
      return [0]
    when 2
      return [0, 1]
    end
  end
  pans = fibs_rec(n-1)
  return pans + [pans[pans.length()-1]+pans[pans.length()-2]]
end