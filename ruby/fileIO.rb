require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'

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
        # puts @inputList
        case @inputList[0]
        when /\shape/
            @shape = Shape.new()
            puts "Shape, Perimeter: #{@shape.perimeter}, area: #{@shape.area}"
        when /\rectangle/
            puts "Found rectangle"
            rectangle = Rectangle.new(@inputList[1],@inputList[2])
            puts "Rectangle, Perimeter: #{@rectangle.perimeter}, area: #{@rectangle.area} "
        when /^circle/
            puts "In circle !!!"
            circle = Circle.new(@inputList[1])
            puts "Circle, Perimeter: #{@circle.perimeter}, area: #{@circle.area} "
        when /^ellipse/
            ellipse = Ellipse.new(@inputList[1],@inputList[2])
            puts "Ellipse, Perimeter: #{@ellipse.perimeter}, area: #{@ellipse.area} "
        else
            puts "Error: The given shape #{@inputList[0]} Is Invalid! Please check your input"
        end
    end
end
