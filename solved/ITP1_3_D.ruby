a,b,c = gets.split(" ").map{|a| a.to_i}
count = 0
for i in a..b
    count += (c % i == 0) ? 1 : 0;
end
puts count