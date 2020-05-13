w, h, x, y, r = gets.split(" ").map{|a| a.to_i}

if x - r >= 0 and y - r >= 0 and x + r <= w and y + r <= h
    puts "Yes"
else
    puts "No"
end