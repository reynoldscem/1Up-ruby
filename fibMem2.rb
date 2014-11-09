fib = Hash.new do |acc, i|
  acc[i] = fib[i - 2] + fib[i - 1]
end.update(0 => 0, 1 => 1)

puts fib[ARGV[0].to_i]
