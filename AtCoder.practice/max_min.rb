def find_max_min(arr)
    max_value = arr[0]
    min_value = arr[0]
  
    arr.each do |num|
      max_value = num if num > max_value
      min_value = num if num < min_value
    end
  
    return max_value, min_value
  end
  
  # 例として、配列 [5, 2, 9, 1, 7] の最大値と最小値を求める場合
  array = [5, 2, 9, 1, 7]
  max, min = find_max_min(array)
  puts "最大値: #{max}"
  puts "最小値: #{min}"
  