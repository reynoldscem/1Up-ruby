# Take a number as an arg, remove odd numbers, square all numbers, and sum all numbers who are divisible by second argument

limit = ARGV[0].to_i
div = ARGV[1].to_i

puts((1..limit).select{|a| a.even?}.map{|x| x**2}.select{|x| x.modulo(div).zero?}.reduce(:+))

