def prime?(n)
    return false if n <= 1
  
    (2..Math.sqrt(n)).each do |i|
      return false if n % i == 0
    end
  
    return true
  end
  
  # 例として、整数 17 が素数かどうかを判定する場合
  number = 17
  if prime?(number)
    puts "#{number} は素数です"
  else
    puts "#{number} は素数ではありません"
  end
  