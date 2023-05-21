def count_characters(input_file, output_file)
    # 入力ファイルを読み込み、各行の文字数をカウントして結果を格納する配列
    character_counts = []
  
    # テキストファイルを開いて処理
    File.open(input_file, "r") do |file|
      file.each_line do |line|
        # 各行の文字数をカウントし、character_countsに追加
        character_count = line.chomp.length
        character_counts << character_count
      end
    end
  
    # 出力ファイルに結果を書き込む
    File.open(output_file, "w") do |file|
      character_counts.each do |count|
        file.puts count
      end
    end
  end
  
  # 入力ファイルのパスと出力ファイルのパス
  input_file_path = "input.txt"
  output_file_path = "output.txt"
  
  # テキストファイルからデータを読み込み、処理結果を別のファイルに書き込む
  count_characters(input_file_path, output_file_path)