fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

puts fib.take(ARGV[0].to_i).last

# credit to http://www.ruby-doc.org/core-2.1.0/Enumerator.html
