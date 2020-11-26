
require "./shape.rb"
class Rectangle < Shape
    attr_accessor :height, :width
    # constructor
    def initialize(height, width)
        super()
        @@height = height
        @@width = width
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