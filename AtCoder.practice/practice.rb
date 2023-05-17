count = 0

(7..7777777).step(7).each do |num|
  count += num.to_s.count('7')
end

puts count
