def radian(degree)
    degree * Math::PI / 180
end

a, b, c =gets.split(" ").map{|a| a.to_f}
c = radian(c)
c_len = Math.sqrt(a**2+b**2 - (2*a*b*Math.cos(c)))
height = b*Math.sin(c)
puts "#{a*height / 2} #{a+b+c_len} #{height}"


