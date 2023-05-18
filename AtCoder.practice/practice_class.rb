def foo(n)
    (1..n).each do |num|
      print num
      print num % 5 == 0 ? "\n" : ", "
    end
  end
  
  foo(20)