=begin
	
rescue Exception => e
	
end
Objective:
1. swapping the first and last name
2. changing all the vowels to the next vowel and all of the consonants to the next consonant

Plan:
- take name as string
- turn string into array, each name as an item.
- create a "original_first_name" array to store the first name
- create a "original_last_name" array to store the last name
- letter change
- join letters
- store the first and last names into alias_name variable, swapping the position
- puts alias_name variable
=end

######################


# Take name as a string:
puts "Welcome to the Alias Creator! When finished, enter quit."
original_name = nil
name_database = {}

until original_name == "quit"
 puts "Enter a name to be alias'ed:"
 original_name = gets.chomp
if original_name != "quit" 
 
 # Turn string into an array, each name as an item:
 original_name_array = original_name.split
 
 # Store each name in a new array:
 original_first_name = [original_name_array[0]]
 original_last_name = [original_name_array[1]]
 
 # Letter changing, vowels:
 
 # Create reference array and string:
 vowels_array = ["a", "e", "i", "o", "u"]
 vowels_string = "aeioua"
 
 # Turn letters into items:
 original_first_name = original_first_name[0].split('')
 original_last_name = original_last_name[0].split('')
 
 # Change vowels to next vowel:
 modified_first_name = original_first_name.map do |letter|
 	if vowels_array.find_index(letter) != nil #is the letter a vowel?
 		letter = vowels_string[vowels_array.find_index(letter) + 1]
 	else
 		letter
 	end
 end
 
 modified_last_name = original_last_name.map do |letter|
 	if vowels_array.find_index(letter) != nil
 		letter = vowels_string[vowels_array.find_index(letter) + 1]
 	else
 		letter
 	end
 end
 
 #Change consonants to next consonant:
 modified_first_name.map! do |letter|
 	if (vowels_array.find_index(letter) == nil) && (letter != "z") && (letter != "Z") #is the letter not a vowel?
 		letter = letter.next
 		if vowels_array.find_index(letter) != nil #is the next letter a vowel?
 			letter = letter.next
 		else
 			letter
 		end
 	elsif letter == "z"
 		letter = "b"
 	elsif letter == "Z"
 		letter = "B"
 	else
 		letter
 	end
 end
 
 modified_last_name.map! do |letter|
 	if (vowels_array.find_index(letter) == nil) && (letter != "z") && (letter != "Z")
 		letter = letter.next
 		if vowels_array.find_index(letter) != nil
 			letter = letter.next
 		else
 			letter
 		end
 	elsif letter == "z"
 		letter = "b"
 	elsif letter == "Z"
 		letter = "B"
 	else
 		letter
 	end
 end
 
 # p original_first_name
 # p modified_first_name
 
 # p original_last_name
 # p modified_last_name
 
 modified_first_name = modified_first_name.join
 modified_last_name = modified_last_name.join
 
 #p modified_last_name.class
 #p modified_first_name.class
 
 alias_name = modified_last_name + " " + modified_first_name
 puts alias_name

else
	name_database.each do |original, changed|
		puts "#{original} is also known as #{changed}."
	end
	puts "Good bye."
end
 name_database[original_name] = alias_name
 
end