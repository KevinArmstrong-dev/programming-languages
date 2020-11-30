require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./shape.rb"

include Math

class FileIO
    @@fileName = ""
    def initialize(fileName)
        @@fileName = fileName

        # if @@fileName.length > 0
        # else
        #     puts "Empty or Invalid Text File Given!"
        # end
    end

    def processString(input)
        @inputList = input.split(/[\s,']/)

        case @inputList[0]
        when /^shape/
            puts "Found shape"
            @shape = Shape.new()
            # puts "Shape, Perimeter: #{@shape.perimeter}, area: #{@shape.area}"
        when /^rectangle/
            rect = Rectangle.new(@inputList[1],@inputList[2])
            puts "Rectangle, perimeter: #{rect.perimeter}, area: #{rect.area} "
        when /^circle/
            puts "In circle !!!"
            circle = Circle.new(@inputList[1])
            # puts circle.area
            puts "Circle, Perimeter: #{circle.perimeter}, area: #{circle.area} "
        when /^ellipse/
            puts "===================================="
            puts "Found Ellipse"
            ellipse = Ellipse.new(@inputList[1],@inputList[2])
            puts "Ellipse, Perimeter: #{ellipse.perimeter}, area: #{ellipse.area}, Eccentricity: #{ellipse.eccentricity} "
        else
            puts "Error: The given shape #{@inputList[0]} Is Invalid! Please check your input"
        end
    end
end
