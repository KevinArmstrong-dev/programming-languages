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

    def initialize(filename)
        super(filename)
    end

    def processString(input)
        @inputList = input.split(/[\s,']/)

        case @inputList[0]
        when /^shape/
            @@statistics["shape"] = @@statistics["shape"] + 1
        when /^rectangle/

            @@statistics["shape"] = @@statistics["shape"] + 1
            @@statistics["rectangle"] = @@statistics["rectangle"] + 1

        when /^circle/

                @@statistics["shape"] = @@statistics["shape"] + 1
                @@statistics["circle"] = @@statistics["circle"] + 1

        when /^ellipse/

                @@statistics["shape"] = @@statistics["shape"] + 1
                @@statistics["ellipse"] = @@statistics["ellipse"] + 1
   
            
        else
            puts "Error: The given shape #{@@inputList[0]} Is Invalid! Please check your input"
        end
    end

    # Easy way of traversing an associative array
    
    def easyPrint()
        @@statistics.each_pair do |key, value|
            puts "#{key} : #{value}"
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