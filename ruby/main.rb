require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'

include Math
require "./shape.rb"

rect = Rectangle.new(3,4)
puts rect.perimeter
puts rect.area

circle = Circle.new(4)
puts circle.area
puts circle.perimeter

# puts "Hello Cruel World!!"
# puts PI

# a = ["Number",1 ,2 ,3,3.14]
# puts a

# biblio = {
#     "nabokov89a" => "Pain",
#     "bulgakov96" => "The master and margarita"
# }

# puts biblio["nabokov89a"]
