require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./fileIO.rb"
include Math
require "./shape.rb"
require "./question3.rb"

file = FileIO.new("inputs.txt")

# File.open("inputs.txt").each{ |line|
#     file.processString(line)
# }

# hash = Question3.new("inputs.txt")
# File.open("inputs.txt").each{ |line|
#     hash.processString(line)
# }

def mysum(input, n)
    @sum = 0;
    input.each do |num|
        if(num < n)
            @sum = @sum + num
        end
    end
    puts @sum
end

# arr = [1,2,3,4,5]

mysum([3, 40, 5, 70, 10], 10)

# hash.printShape()
# hash.easyPrint()