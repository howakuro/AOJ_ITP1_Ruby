def main()
    p = gets.chomp
    count = 0
    while true
        s = gets.chomp
        break if s == "END_OF_TEXT" 
        s = s.downcase.split(" ")
        for i in s
            if i == p
                count += 1
            end
        end
    end
    puts count
end

main()