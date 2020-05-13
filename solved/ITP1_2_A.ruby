a, b = gets.split(" ").map{|a| a.to_i}
if a < b
    puts "a < b"
elsif a > b
    puts "a > b"
else
    puts "a == b"
end