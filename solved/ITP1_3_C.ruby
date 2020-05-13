for i in 0..10000
    array = gets.split(" ").map{|a| a.to_i}
    break if array[0]==0 and array[1]==0
    puts array.sort.join(" ")
end