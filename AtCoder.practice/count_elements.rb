def count_elements(arr)
    count_map = {}
  
    arr.each do |element|
      if count_map.include?(element)
        count_map[element] += 1
      else
        count_map[element] = 1
      end
    end
  
    return count_map
  end
  
  # 例として、配列 [1, 2, 2, 3, 3, 3, 4, 4, 4, 4] の各要素の出現回数をカウントする場合
  array = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
  counts = count_elements(array)
  
  counts.each do |element, count|
    puts "#{element}: #{count}"
  end
  
  strings = ["apple", "banana", "apple", "cherry", "banana", "apple", "apple"]
counts = count_elements(strings)

counts.each do |element, count|
  puts "#{element}: #{count}"
end
