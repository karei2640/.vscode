def calculate_sum(a, b)
    sum = a + b
    puts "#{a} と #{b} の合計は #{sum} です。"
  end
  
  calculate_sum(10, 20)
  

def calculate_average(numbers)
  total = 0
  numbers.each do |num|
    total += num
  end
  average = total / numbers.length.to_f
  puts "数値の平均は #{average} です。"
end

nums = [10, 20, 30, 40, 50]
calculate_average(nums)  

a = 5
b = 3
product = a * b
puts "#{a} と #{b} の積は #{product} です。"

dividend = 10
divisor = 2
quotient = dividend / divisor
puts "#{dividend} を #{divisor} で割った商は #{quotient} です。"

dividend = 10
divisor = 3
quotient = dividend / divisor
remainder = dividend % divisor

puts "#{dividend} を #{divisor} で割った商は #{quotient} で、余りは #{remainder} です。"

base = 2
exponent = 3
result = base ** exponent
puts "#{base} の #{exponent} 乗は #{result} です。"

number = 16
square_root = Math.sqrt(number)
puts "#{number} の平方根は #{square_root} です。"

number = -10
absolute_value = number.abs
puts "#{number} の絶対値は #{absolute_value} です。"

number = 16
sqrt = Math.sqrt(number)
puts "#{number} の平方根は #{sqrt} です。"

number = 100
logarithm = Math.log10(number)
puts "#{number} の常用対数は #{logarithm} です。"