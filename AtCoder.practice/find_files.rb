def find_files(directory, extension)
    files = []
  
    Dir.foreach(directory) do |file|
      next if file == '.' || file == '..'
  
      file_path = File.join(directory, file)
  
      if File.directory?(file_path)
        # サブディレクトリの場合は再帰的に検索
        sub_directory_files = find_files(file_path, extension)
        files.concat(sub_directory_files)
      elsif File.extname(file_path) == extension
        # 拡張子が一致する場合はファイルをリストに追加
        files << file_path
      end
    end
  
    return files
  end
  
  # 指定されたディレクトリと拡張子
  directory = '/path/to/directory'  # 検索したいディレクトリのパスを指定
  extension = '.txt'  # 検索したいファイルの拡張子を指定
  
  # ファイルを検索
  matching_files = find_files(directory, extension)
  
  # 結果を表示
  matching_files.each { |file| puts file }
  