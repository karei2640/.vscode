def anagram?(str1, str2)
    # 文字列を小文字に変換して空白を削除し、アルファベットのみを抽出する
    normalized_str1 = str1.downcase.gsub(/\s+/, "").gsub(/[^a-zA-Z]/, "")
    normalized_str2 = str2.downcase.gsub(/\s+/, "").gsub(/[^a-zA-Z]/, "")
  
    # 文字列をソートして比較する
    sorted_str1 = normalized_str1.chars.sort.join
    sorted_str2 = normalized_str2.chars.sort.join
  
    # ソートした結果が一致していればアナグラムと判定する
    return sorted_str1 == sorted_str2
  end
  
  # 例として、"listen"と"silent"がアナグラムであるかどうかを判定する場合
  string1 = "listen"
  string2 = "silent"
  is_anagram = anagram?(string1, string2)
  puts "#{string1} と #{string2} はアナグラムですか？ #{is_anagram}"
  