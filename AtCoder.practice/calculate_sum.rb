def calculate_sum(arr)
    sum = 0

    arr.each do |element|
        sum += element
    end
    return sum
end

# 例として、配列 [1, 2, 3, 4, 5] の要素の合計を計算する場合

array = [1, 2, 3, 4, 5]
total_sum = calculate_sum(array)

puts "合計: #{total_sum}"

#負の数を含む配列
negative_numbers = [-1, -2, -3, -4, -5]
total_sum = calculate_sum(negative_numbers)
puts "合計: #{total_sum}"

# 浮動小数点数を含む配列
float_numbers = [1.5, 2.3, 3.7, 4.1, 5.9]
total_sum = calculate_sum(float_numbers)
puts "合計: #{total_sum}"

#空の配列
empty_array = []
total_sum = calculate_sum(empty_array)
puts "合計: #{total_sum}"