#Ask user for name input, use get.chomps
#Swap First and Last name
# - Find the two seperate names (First and Last) by 
# - - transfering all characters of input into an array
# - - find the index of the space used to seperate the names
# - - Assign the index numbers from start to the space as First name in a new array
# - - Assign the index numbers from the space to the last number as the Last name in a new array
# Create array for vowels
# Create array for consonants
# In First and Last arrays, find matches for vowels, cycle to next. Do the same for consonants
# Print resutls

puts "Welcome Agent. Please provide the name to be turned into an alias:"
original_name = gets.chomp
p original_name

split_name = original_name.split('')
p split_name

split_name.map! {|letter| letter}
p split_name

