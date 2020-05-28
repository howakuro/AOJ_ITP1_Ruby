def call(n)
    i = 1
    while i <= n
        x = i
        if x % 3 == 0
            print " #{i}"
            i += 1
            next
        end

        while true
            if x % 10 == 3
                print " #{i}"
                break
            end
            x /= 10
            break if x == 0
        end
        i += 1
    end
    puts ""
end

n = gets.to_i
call(n)