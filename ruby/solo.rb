##### Design
=begin
class: Sharks

attributes:
- age
- size (small, medium, large, monster)
- type (bull shark, tiger shark, mako shark, whale shark)
- location (Pacific Ocean)

methods:
- chomp (puts "*chomp, chomp*")
- eats (takes integer, puts "eats INTEGER tasty fish")
- speak (puts "Glrble grgle")
=end

##### Write

class Shark
	attr_reader :location
	attr_accessor :age, :size, :type
	def initialize(age, size, type)
		@location = "Pacific Ocean"
		@age = age
		@size = size
		@type = type
	end

	def chomp
		puts "*Chomp, chomp*"
	end

	def eats(fish_number)
		puts "Eats #{fish_number} tasty fish."
	end

	def speak
		puts "Glrble grgle!"
	end
end

example_size = ["small", "medium", "large", "monster"]
example_type = ["bull shark", "tiger shark", "mako shark", "whale shark"]

puts "Lets make a shark!"
input_start = nil
sharks = []

until input_start == "exit"
	puts "Would you like to start a new shark?"
	input_start = gets.chomp

	if input_start != "exit"

		puts "How old is our shark?"
		input_age = gets.chomp.to_i
		
		puts "What size is our shark?"
		input_size = gets.chomp
		
		puts "What type is our shark?"
		input_type = gets.chomp
		
		sharks << Shark.new(input_age, input_size, input_type)
	else
		p sharks
		puts "Good Bye!"
	end
end