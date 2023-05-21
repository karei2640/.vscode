def palindrome?(str)
    normalized_str = str.downcase.gsub(/\W/, '')
    reversed_str = normalized_str.reverse
    return normalized_str == reversed_str
  end
  
  # 例として、文字列 "level" が回文かどうかを判定する場合
  string = "level"
  if palindrome?(string)
    puts "#{string} は回文です"
  else
    puts "#{string} は回文ではありません"
  end
  string = "hello"
if palindrome?(string)
  puts "#{string} は回文です"
else
  puts "#{string} は回文ではありません"
end
