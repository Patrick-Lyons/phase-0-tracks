# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. def method
  # 2. initialize grocery list
  # 3. set default quantity
  # 4. print the list to the console [puts]
# output: hash
def create_groceries_list (grocery_items)
	groceries_list = Hash.new()
	grocery_items.split.each {|item| groceries_list[item] = 1}
	return groceries_list
end
$groceries_list = create_groceries_list ("carrots apples cereal pizza")
p $groceries_list

#Driver Code Check
if create_groceries_list("carrots apples cereal pizza").class.to_s == "Hash"
 	check1 = true
 end



# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# 1. def method 
	# 2. take new item
	# 3. use block method to add new item into groceries list hash
	# 4. update gorceries_list
# output: updated list

=begin
Work around found by Liu
def add_item(new_item,quantity,list)
	list[new_item] = quantity
end
add_item("grapes",1,groceries_list)
p groceries_list
=end

def add_item(new_item,quantity)
 $groceries_list[new_item] = quantity
end
new_items = {"lemonade" => 1, "tomatoes" => 3, "onions" => 1, "ice cream" => 4}
# add_item_to_grocery_list = *new_items
# p add_item_to_grocery_list
new_items.each{|x, y| add_item(x, y)}
=begin
 add_item("lemonade",1)
 add_item("tomatoes",3)
 add_item("onions",1)
 add_item("ice cream",4)
=end
p $groceries_list

#Driver Code Check
if new_items.each{|x, y| add_item(x, y)}.class.to_s == "Hash"
 	check2 = true
 end

# Method to remove an item from the list
# input: grocery item to be removed
# steps:
	# 1. def method
	# 2. take item name (matches a key)
	# 3. delete key (and value) from hash	
# output: updated list

def remove_item(item_name)
	$groceries_list.delete(item_name)
end
remove_item("lemonade")
p $groceries_list

# Method to update the quantity of an item
# input: grocery item and the new quantity
# steps:
	# 1. def method
	# 2. take item name (key) and new quantity (value)
	# 3. rewrite value of key
# output: update list

def new_quantity(item_name,quantity)
	$groceries_list[item_name] = quantity
end
new_quantity("ice cream",1)
p $groceries_list

# Method to print a list and make it look pretty
# input: grocery list
# steps:
	# 1. def method 
	# 2. use block code to print list
# output: pretty list

def pretty_list(list)
	$groceries_list.each{|key, value| puts "Buy #{key}, for quantity #{value}"}
end
pretty_list($groceries_list)

#Driver Code Check
if pretty_list($groceries_list).class.to_s == "Hash"
 	check5 = true
 end

=begin
Rlease 5, Reflect:
1. Makes the process more clear, lets you organize your thoughts, and will allow others to understand your code.
2. The data for the arrays and hashehs has to carry throughout the program, so a mistake in the beginning can compound and be hard to find.
3. A method returns the last evaluated line inside the method.
4. Any class of data, as long as it correlates to the number of arguments.
5. One, use the output data as a parameter. Two, make a global variable so every method can contribute to it.
6. Iteration was clarified. How to use the parameters for block codes was solidified.
=end