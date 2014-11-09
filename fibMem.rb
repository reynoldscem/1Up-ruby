class Fib
  def initialize
    @mem = [0,1]
  end

  def fibN(n)
    return @mem[n] unless @mem[n].nil?
    val = (fibN(n-1) + fibN(n-2))
    @mem.push val
    val
  end
end

puts Fib.new.fibN ARGV[0].to_i
