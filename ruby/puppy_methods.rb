class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# Speak method:
class Puppy
def speak(int)
	while int > 0
		puts "Woof!"
		int -= 1
	end
end
end

# Roll over method:
class Puppy
	def roll_over
		puts "*rolls over*"
	end
end

# Dog years:
class Puppy
	def dog_years(int)
		p int*7
	end
end

# Doggy high five:
class Puppy
	def high_five
		puts "*high fives you*"
	end
end

# Initialize:
class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end
end

# Driver code:
balto = Puppy.new
p balto
balto.fetch("sock")
balto.speak(3)
balto.roll_over
balto.dog_years(5)
balto.high_five

############################
# New class, Robot:
class Robot
	def boop
		puts "Beep boop"
	end
end

class Robot
	def dance
		puts "*does the robot, and it looks very natural*"
	end
end

class Robot
	def initialize
		puts "Creating new super cool robot..."
	end
end

# Loop for 50 instances:

robot_order = 0
robot_list = []
robot_name = "robot_0"

until robot_order == 50
	robot_name = robot_name.next
	test = robot_name
	test = Robot.new
	robot_order += 1
	robot_list << test
end

robot_list.each do |robot|
	robot.boop
	robot.dance
end






