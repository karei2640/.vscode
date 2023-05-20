PI = 3.14159
radius = 5
area = PI * radius**2
puts "円の面積は #{area} です。"

width = 10
height = 5
area = width * height
puts "長方形の面積は #{area} です。"

base = 8
height = 4
area = 0.5 * base * height
puts "三角形の面積は #{area} です。"

radius = 3
circumference = 2 * PI * radius
puts "円の円周は #{circumference} です。"

side1 = 4
side2 = 3
diagonal = Math.sqrt(side1**2 + side2**2)
puts "長方形の対角線の長さは #{diagonal} です。"

number = 5
factorial = (1..number).reduce(:*)
puts "#{number} の階乗は #{factorial} です。"

side_a = 3
side_b = 4
hypotenuse = Math.sqrt(side_a**2 + side_b**2)
puts "直角三角形の斜辺の長さは #{hypotenuse} です。"