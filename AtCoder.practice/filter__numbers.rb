def filter_even_numbers(array)
    even_numbers = array.select { |num| num.even? }
    return even_numbers
  end
  
  # 与えられた配列
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  # 偶数の要素のみを抽出
  even_numbers = filter_even_numbers(numbers)
  
  # 結果を表示
  puts even_numbers.inspect

  def filter_odd_numbers(array)
    odd_numbers = array.select { |num| num.odd? }
    return odd_numbers
  end
  
  # 与えられた配列
  numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  # 奇数の要素のみを抽出
  odd_numbers = filter_odd_numbers(numbers)
  
  # 結果を表示
  puts odd_numbers.inspect