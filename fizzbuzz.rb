(1..ARGV[0].to_i).each {|i| x = ''; x += "Fizz" if i.modulo(3).zero?; x += "Buzz" if i.modulo(5).zero?; puts(x.empty? ? i : x)}
