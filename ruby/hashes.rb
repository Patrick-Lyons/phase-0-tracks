#Task: create a hash that allows the user to fill out keys corolating to the interior designer's needs for client details.
#Basic overview:
#1. creat the hash with all the necessary keys
#2. creat prompts that ask user for input.
# - display question in string
# - use gets.chomp
# - if necessary, use a boolean statement to handle response (are there kids?)
#3. after all keys have been filled out, print out all keys
#4. allow user to select a key to update value

client = {
	name: nil,
	age: nil,
	children: nil,
	decor_theme: nil,
	pets: nil,
	dogs: nil
}

puts "What is the client's name?"
client[:name] = gets.chomp

puts "What is #{client[:name]}'s age?"
client[:age] = gets.chomp

puts "What number of children does #{client[:name]} have?"
client[:children] =gets.chomp.to_i

if client[:children] > 0
	count = client[:children]
	while count > 0
		puts "What is the age of child #{count}?"
		client["Child #{count}'s age"] = gets.chomp
		count -= 1
	end
end

puts "What is #{client[:name]}'s preferred decor theme?"
client[:decor_theme] = gets.chomp.to_s

puts "What number of pets does #{client[:name]} have?"
client[:pets] = gets.chomp.to_i

if client[:pets] > 0
	puts "How many dogs does #{client[:name]} have?"
	client[:dogs] = gets.chomp.to_i
else
	client.delete(:dogs)
end

p client

puts "If you wish to change an answer, enter in the field name you wish to change."
input = gets.chomp.to_sym
if client.member?(input)
	puts "Please re-enter the information"
	client[input] = gets.chomp
	p client
else 
	puts "Goodbye."
end




