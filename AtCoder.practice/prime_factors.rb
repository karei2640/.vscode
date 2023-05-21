def prime_factors(n)
    factors = []
    divisor = 2
    while n >1
        if n % divisor == 0
            factors << divisor
            n /= divisor
        else
            divisor += 1
        end
    end
    return factors
end

#例として、整数 56 の素因数分解を行う場合
number = 56
factors = prime_factors(number)
puts "#{number}の素因数分解結果:#{factors.inspect}"

#例として、整数 156 の素因数分解を行う場合
number = 156
factors = prime_factors(number)
puts "#{number}の素因数分解結果:#{factors.inspect}"

#例として、整数 1552 の素因数分解を行う場合
number = 1552
factors = prime_factors(number)
puts "#{number}の素因数分解結果:#{factors.inspect}"