n = gets.to_i
taro_point = 0
hanako_point = 0
for i in 0...n
    taro, hanako = gets.chomp.split(" ")
    if taro > hanako
        taro_point += 3
    elsif hanako > taro
        hanako_point += 3
    else
        taro_point += 1
        hanako_point +=1
    end
end
puts taro_point.to_s + " " + hanako_point.to_s
