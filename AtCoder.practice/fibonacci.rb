def fibonacci(n)
  if n <= 1
    return n
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

# 例として、第10項を求める場合
n = 10
result = fibonacci(n)
puts "第#{n}項: #{result}"
