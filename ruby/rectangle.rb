
require "./shape.rb"
class Rectangle < Shape
    attr_accessor :height, :width
    # constructor
    def initialize(height, width)
        super()
        if (height < 0 || width < 0) then
           puts "Invalid Height or Width given !! The input should be greater than 0"
        else
            @@height = height
            @@width = width
        end
    end

    # Overriden perimeter method 
    # 
    def perimeter()
        return  2 * (@@height + @@width)
    end 

    # area of the circle
    def area()
        return @@height * @@width
    end

end