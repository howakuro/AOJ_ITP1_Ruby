while true
    n, x = gets.split(" ").map{|a| a.to_i}
    break if n==0 and x==0
    count = 0
    for a in [*1..n].combination(3)
        if a.inject(:+) == x 
            count += 1
        end
    end
    puts count
end