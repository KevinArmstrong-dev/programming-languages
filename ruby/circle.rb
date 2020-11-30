include Math
require_relative "shape.rb"
class Circle < Shape
    @@radius = 0
    # constructor
    def initialize(radius)
        super()
        @@radius = radius.to_i
    end

    # Overriden perimeter method 
    # perimeter of a circle is 2 Pi Radius
    def perimeter()
        return PI * 2 * @@radius
    end 

    # area of the circle
    def area()
        return PI * @@radius * @@radius
    end

end