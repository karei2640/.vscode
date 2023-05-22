def pattern_matching(pattern, text)
    m = pattern.length
    n = text.length
  
    (0..n - m).each do |i|
      j = 0
  
      while j < m
        break if text[i + j] != pattern[j]
  
        j += 1
      end
  
      return true if j == m
    end
  
    false
  end
  
  # 例として、パターンマッチングの実行を行う
  pattern = "abc"
  text = "xyzabcde"
  
  if pattern_matching(pattern, text)
    puts "パターンが文字列内で見つかりました"
  else
    puts "パターンは文字列内で見つかりませんでした"
  end
  