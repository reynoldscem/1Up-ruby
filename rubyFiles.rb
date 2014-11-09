filenames = `ls`.split.select{|x| x =~ /.*\.rb/}
SEP_LENGTH = 20

puts "There are #{filenames.size} ruby files in the current directory (#{`pwd`})"

unless filenames.size.zero?
  puts "Their names are:"
  filenames.each_with_index do |name, i| 
    puts "#{i}: #{name}" 
  end
  
  loop do
    print "Enter index of file to read: "
    index = gets.chomp.to_i
    SEP_LENGTH.times { print "-" }
    puts
    begin
      puts filenames[index]
      SEP_LENGTH.times { print "-" }
      puts
      File.open(filenames[index], "r").each do |x|
        puts x
      end
    rescue
      puts "Not found"
    end
    SEP_LENGTH.times { print "-" }
    puts
  end
end
