def fibN(n)
  return n unless n > 1
  (fibN(n-1) + fibN(n-2))
end

puts fibN ARGV[0].to_i
