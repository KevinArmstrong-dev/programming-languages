
require "./shape.rb"
class Rectangle < Shape
    attr_accessor :height, :width
    # constructor
    def initialize(height, width)
        super()
        # if height.negative?() then
        #    puts "Invalid Height or Width given !! The input should be greater than 0"
        # else
            @@height = height.to_i
            @@width = width.to_i
        # end
    end

    # Overriden perimeter method 
    # 
    def perimeter
        # puts "perimeter"
       return 2 * (@@height + @@width)
    end 

    # area of the circle
    def area
        return @@height * @@width
    end

end