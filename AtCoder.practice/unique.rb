def unique_elements(arr)
    unique_arr = []
    seen = {}
  
    arr.each do |element|
      unless seen[element]
        unique_arr << element
        seen[element] = true
      end
    end
  
    return unique_arr
  end
  
  # 例として、配列 [1, 2, 3, 2, 4, 1, 5] から重複する要素を削除する場合
  array = [1, 2, 3, 2, 4, 1, 5]
  unique_array = unique_elements(array)
  puts "ユニークな要素: #{unique_array.join(", ")}"
  