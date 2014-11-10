def fact(n) 
    return 1 if n == 1
    n * fact(n - 1)
end

puts fib(ARGV[0].to_i)
