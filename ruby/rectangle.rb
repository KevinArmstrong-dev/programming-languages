
require "./shape.rb"
class Rectangle < Shape
    attr_accessor :height, :width
    @@valid = true
    # constructor
    def initialize(height, width)
        super()
        if height.to_i < 0 || width.to_i < 0 then
            @@valid = false
            @@height = 0
            @@width = 0
        else
            @@height = height.to_i
            @@width = width.to_i
        end
    end

    # Overriden perimeter method 
    # 
    def perimeter
       return 2 * (@@height + @@width)
    end 

    # area of the circle
    def area
        return @@height * @@width
    end

    def isValid()
        return @@valid
    end

end