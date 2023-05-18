count = 0

(7..7777777).step(7).each do |num|
  count += num.to_s.count('7')
end

puts count

count = 0

(7..7777777).step(7).each do |num|
  count += num.to_s.include?('7') ? 1 : 0
end

puts count