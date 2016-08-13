def build_array(parameter1, parameter2, parameter3)
	arr = Array.new
	arr.push(parameter1, parameter2, parameter3)
end

p build_array(1, 2, 3)

def add_to_array(parameter1, parameter2)
	parameter1 << parameter2
end

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)

array1 = []
first = array1
p first

array1.push("zero", "one", "two", "three", "four")
p array1

array1.delete_at(2)
p array1

array1.insert(3,'apple')
p array1

array1.shift
p array1

test = array1
p test

if test.include?("four")
	puts "Match"
end

#def meth1(x)
#	input = x
#	p input.class
#	if test.each.include?(input)
#	puts "The array has found a match for #{x}."
#else
#	puts "There is no match for #{x}."
#end
#end

#meth1("three")

#Tried a lot of different combinations, cannot figure out why line 27 is having an error for a mismatch in arguments.

array2 = ["five", "six", "seven", "eight"]

new_array = array1 + array2
p new_array

