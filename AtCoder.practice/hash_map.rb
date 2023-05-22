# ハッシュマップの作成
hash_map = {}

# 要素の追加
hash_map["apple"] = 1
hash_map["banana"] = 2
hash_map["cherry"] = 3

# 要素の検索
puts hash_map["banana"]  # 結果: 2

# 要素の更新
hash_map["apple"] = 5

# 要素の削除
hash_map.delete("cherry")

# ハッシュマップの要素数を取得
puts hash_map.length  # 結果: 2

# ハッシュマップのキーと値を順に表示
hash_map.each do |key, value|
  puts "#{key}: #{value}"
end
