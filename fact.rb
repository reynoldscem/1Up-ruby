def fib(n) 
    return 1 if n == 1
    n * fib(n - 1)
end

puts fib(ARGV[0].to_i)
