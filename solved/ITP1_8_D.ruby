def check(s, p, i)
    for j in 0...(p.length)
        if s[(i + j) % s.length] != p[j]
            return false
        end 
    end
    return true
end

def main()
    s = gets.chomp
    p = gets.chomp
    for i in 0...(s.length)
        if s[i] == p[0] and check(s, p, i)
            puts "Yes"
            return
        end
    end
    puts "No"
end

main()


