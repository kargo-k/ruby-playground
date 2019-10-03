def fib_recursion(n)
  if n == 1 || n == 2
    result = 1
  else
    result = fib_recursion(n-1) + fib_recursion(n-2)
  end
  result
end

puts fib_recursion(1)
puts fib_recursion(5)
puts fib_recursion(10)
puts '===== \n\n'

memo = Array.new(100)
def fib(n, memo)
  if memo[n] != nil
    return memo[n]
  end

  if n==1 || n == 2
    result = 1
  else
    result = fib(n-1, memo) + fib(n-2, memo)
  end
  memo[n] = result
  return result
end

puts fib(4, memo)
puts fib(10, memo)
puts '====='

def fib_botup(n)
  fib = Array.new(n-1)
  fib[0] = 1
  fib[1] = 1

  if fib[n-1]
    return fib[n-1]
  end

  for i in 2...n
    fib[i] = fib[i-1] + fib[i-2]
  end

  fib[-1]
end

puts fib_botup(5)
puts fib_botup(10)