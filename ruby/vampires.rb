puts "How many eomployees will be processed?"
employee = gets.chomp
rounds = employee.to_i
count = 0
p rounds

until count == rounds
puts "Hello, what is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
dob = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (y/n)"
health = gets.chomp

if (dob.to_i + age.to_i == 2016 || dob.to_i + age.to_i == 2015) && (garlic == "y" || health == "y")
	status = "Probably not a vampire"
end

if (dob.to_i + age.to_i != 2016 && dob.to_i + age.to_i != 2015) && (garlic != "y" || health != "y")
	status = "Probably a vampire"
end

if (dob.to_i + age.to_i != 2016 && dob.to_i + age.to_i != 2015) && (garlic != "y" && health != "y")
	status = "Almost certainly a vampire"
end


if name == "Drake Cula" || name == "Tu Fang"
status = "Definitely a vampire"
kk
	puts status
else
	puts "Results inconclusive."

puts "Do you have any allergies? Please list them one at a time, and when you are done type [done]."
if gets.chomp == "sunshine"
	puts "Probably a vampire"
elsif gets.chomp == "done"
	puts "Have a nice day!"
else
	puts "Please list all allergies, and type 'done' when finished."
end

count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
