require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./shape.rb"

include Math

class Question3  < FileIO
    @@statistics = {
        "shape" => 0,
        "rectangle" => 0,
        "circle" => 0,
        "ellipse" => 0
    }
    @@temp =2
    def initialize(filename)
        super(filename)
    end

    def processString(input)
        @inputList = input.split(/[\s,']/)

        case @inputList[0]
        when /^shape/
            @@statistics["shape"] = @@statistics["shape"] + 1
        when /^rectangle/

            rect = Rectangle.new(@inputList[1],@inputList[2])
            
            if(rect.isValid())
                @@statistics["shape"] = @@statistics["shape"] + 1
                @@statistics["rectangle"] = @@statistics["rectangle"] + 1
            end

        when /^circle/

            circle = Circle.new(@inputList[1])
            if(circle.isValid())
                @@statistics["shape"] = @@statistics["shape"] + 1
                @@statistics["circle"] = @@statistics["circle"] + 1
            end
        when /^ellipse/

            ellipse = Ellipse.new(@inputList[1],@inputList[2])
            
            if(ellipse.isValid())
                # puts "Is valid ellipse #{ellipse.isValid}"
                @@statistics["shape"] = @@statistics["shape"] + 1
                @@statistics["ellipse"] = @@statistics["ellipse"] + 1
            end
            
        else
            puts "Error: The given shape #{@@inputList[0]} Is Invalid! Please check your input"
        end
    end

    def printShape()
        puts "Statistics : "
        puts "Shape(s): #{@@statistics["shape"]}"
        puts "Rectangle(s): #{@@statistics["rectangle"]}"
        puts "Circle(s): #{@@statistics["circle"]}"
        puts "Ellipse(s): #{@@statistics["ellipse"]}"
    end

end