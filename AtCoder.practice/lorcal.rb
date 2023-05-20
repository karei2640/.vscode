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

base = 2
exponent = 3
result = base ** exponent
puts "#{base} の #{exponent} 乗は #{result} です。"