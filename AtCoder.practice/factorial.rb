def factorial (n)
    if n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end

# 例として、整数 5 の階乗を計算する場合
number = 5
result = factorial(number)
puts "#{number}の階階乗:#{result}"

number = 8
result = factorial(number)
puts "#{number}の階階乗:#{result}"