include Math
require_relative "shape.rb"
class Ellipse < Shape
    attr_accessor :semi_major, :semi_minor
    # constructor
    def initialize(a, b)
        super()
        if(a.to_i < 0 || b.to_i < 0)
            puts "Invalid Ellipse"
        end
        @@semi_major = a.to_i
        @@semi_minor = b.to_i
    end

    # Overriden perimeter method 
    # 
    def perimeter()
        return "undefined"
    end 

    # area of the circle
    def area()
        return @@semi_minor * @@semi_major * PI
    end

    # eccentricity
    def eccentricity()
        return sqrt((@semi_major.to_i ** 2) - (@semi_minor.to_i ** 2))
    end

end