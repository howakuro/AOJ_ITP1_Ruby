while true
    m, f, r = gets.split(" ").map{|a| a.to_i}
    break if m == -1 and f == -1 and r == -1
    point = m + f

    if m == -1 or f == -1
        puts "F"
        next
    end

    if point >= 80
        puts "A"
    elsif point >=65
        puts "B"
    elsif point >= 50
        puts "C"
    elsif point >= 30
        puts (r >= 50) ? "C" : "D"
    else
        puts "F"
    end
    
end
