require "./circle.rb"
require "./ellipse.rb"
require './rectangle.rb'
require "./fileIO.rb"
include Math
require "./shape.rb"
require "./question3.rb"

file = FileIO.new("inputs.txt")

File.open("inputs.txt").each{ |line|
    file.processString(line)
}

hash = Question3.new("inputs.txt")
File.open("inputs.txt").each{ |line|
    hash.processString(line)
}

# puts "Hello Cruel World!!"
# puts PI

# a = ["Number",1 ,2 ,3,3.14]
# puts a

# biblio = {
#     "nabokov89a" => "Pain",
#     "bulgakov96" => "The master and margarita"
# }

# puts biblio["nabokov89a"]
