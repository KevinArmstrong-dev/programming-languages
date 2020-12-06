require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./shape.rb"

include Math

class Question3  < FileIO
    @statistics = {
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
            puts "Hello cruel world!"
            @statistics["shape"] = @statistics["shape"] + 1
            puts @statistics["shape"]
        when /^rectangle/
            @statistics["rectangle"] = @statistics["rectangle"] + 1
            @statistics["rectangle"]
        when /^circle/
            @statistics["circle"] = @statistics["circle"] + 1
            puts @statistics["circle"]
        when /^ellipse/
            @statistics["ellipse"] = @statistics["ellipse"] + 1
            puts @statistics["shape"]
        else
            puts "Error: The given shape #{@inputList[0]} Is Invalid! Please check your input"
        end
    end

end