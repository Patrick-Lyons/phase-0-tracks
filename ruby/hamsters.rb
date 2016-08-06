puts "What is the hamster's name?"
name = gets.chomp

puts "What is the hmaster's volume level, on a level 1 through 10?"
volume = gets.chomp

volume.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp

puts "What is the estimated age of the hamster?"
age = gets.chomp
if age == ""
	age = nil
end

puts "Is this correct?"
puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Color: #{color}"
puts "Adoption Candidate: #{adoption}"
puts "Estimated Age: #{age}"