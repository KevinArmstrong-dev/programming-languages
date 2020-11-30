require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./fileIO.rb"
include Math
require "./shape.rb"
require "./question3.rb"

# rect = Rectangle.new(3,4)
# puts rect.perimeter
# puts rect.area

# circle = Circle.new(4)
# puts circle.area
# puts circle.perimeter

# file = FileIO.new("inputs.txt")

# File.open("inputs.txt").each{ |line|
#     file.processString(line)
# }

hash = Question3.new("inputs.txt")
File.open("inputs.txt").each{ |line|
    hash.processString(line)
}

