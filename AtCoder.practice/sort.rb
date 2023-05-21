def bubble_sort(arr)
    n = arr.length
  
    (0...n).each do |i|
      swapped = false
  
      (0...n - i - 1).each do |j|
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          swapped = true
        end
      end
  
      break unless swapped
    end
  
    return arr
  end
  
  # 例として、配列 [5, 2, 9, 1, 7] を昇順にソートする場合
  array = [5, 2, 9, 1, 7]
  sorted_array = bubble_sort(array)
  puts "ソート結果: #{sorted_array.join(", ")}"
  
  def binary_search(array, target)
    left = 0
    right = array.length - 1
  
    while left <= right
      mid = (left + right) / 2
  
      if array[mid] == target
        return mid
      elsif array[mid] < target
        left = mid + 1
      else
        right = mid - 1
      end
    end
  
    return -1
  end
  
  # 例として、ソートされた配列 [1, 3, 5, 7, 9, 11] 内で値 5 を検索する場合
  sorted_array = [1, 3, 5, 7, 9, 11]
  target_value = 5
  result = binary_search(sorted_array, target_value)
  
  if result != -1
    puts "値 #{target_value} は配列内のインデックス #{result} に存在します"
  else
    puts "値 #{target_value} は配列内に存在しません"
  end
  