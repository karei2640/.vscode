def countdown(n)
    if n <= 0
      puts "カウントダウン終了"
    else
      puts n
      countdown(n - 1)
    end
  end
  
  # 例として、10からカウントダウンする場合
  countdown(10)
  