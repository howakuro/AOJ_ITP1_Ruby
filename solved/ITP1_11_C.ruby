class Dice
    def initialize(data)
        @data = data;
    end
    
    def west
        @data[0], @data[3],@data[5],@data[2] = @data[2], @data[0], @data[3], @data[5]
    end
    
    def east
        @data[0], @data[3],@data[5],@data[2] = @data[3],@data[5], @data[2], @data[0]
    end
    
    def north
        @data[0], @data[1], @data[5], @data[4] = @data[1], @data[5], @data[4], @data[0]
    end 
    
    def south
        @data[0], @data[1], @data[5], @data[4] = @data[4], @data[0], @data[1], @data[5]
    end
    
    def command(direction)
        case direction
            when "E" then
                self.east
            when "N" then
                self.north
            when "W" then
                self.west
            when "S" then
                self.south
        end
    end

    def get_surface(n)
        return @data[n-1]
    end

    def get_dice
        return @data
    end
end

def main()
    dice1 = Dice.new(gets.split(" ").map{|a| a.to_i})
    dice2 = Dice.new(gets.split(" ").map{|a| a.to_i})

    if dice1.get_dice == dice2.get_dice
        puts "Yes"
        return 
    end
    "EEENEEENEEESEEESEEENEEEN".each_char do |c|
        dice1.command(c)
        if dice1.get_dice == dice2.get_dice
            puts "Yes"
            return 
        end
    end
    puts "No"
end

main()
