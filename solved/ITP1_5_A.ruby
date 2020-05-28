while true
    h, w = gets.split(" ").map{|a| a.to_i}
    break if h == 0 and w == 0
    for y in 0...h
        for x in 0...w
            if x == w - 1 
                    print "#\n"
            else
                    print "#"
            end
        end
    end
    puts ""
end