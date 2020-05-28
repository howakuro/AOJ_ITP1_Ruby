str = gets.chomp.split("")
q = gets.to_i
for i in 0...q
    order = gets.chomp.split(" ")
    case order[0]
        when "replace" then
            ((order[1].to_i)..(order[2].to_i)).each_with_index do |x, i|
                str[x] = order[3][i] 
            end
        when "reverse" then
            str[order[1].to_i..order[2].to_i] = str[order[1].to_i..order[2].to_i].reverse
        when "print"
            puts str[order[1].to_i..order[2].to_i].join("")
    end
end
