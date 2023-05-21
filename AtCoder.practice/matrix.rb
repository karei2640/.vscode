def transpose_matrix(matrix)
    transposed_matrix = matrix.transpose
    return transposed_matrix
  end
  
  # 与えられた二次元配列
  matrix = [[1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]]
  
  # 行と列を入れ替える
  transposed_matrix = transpose_matrix(matrix)
  
  # 結果を表示
  transposed_matrix.each { |row| puts row.inspect }
  