include Math
require_relative "shape.rb"
class Ellipse < Shape
    attr_accessor :semi_major, :semi_minor
    # constructor
    def initialize(a, b)
        super()
        @@semi_major = a
        @@semi_minor = b
    end

    # Overriden perimeter method 
    # 
    def perimeter()
        return nil
    end 

    # area of the circle
    def area()
        return @@semi_minor * @@semi_major * PI
    end

    # eccentricity
    def eccentricity()
        return sqrt((@semi_major ** 2) - (@semi_minor ** 2))
    end

end