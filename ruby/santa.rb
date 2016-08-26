class Santa
	attr_reader :reindeer_ranking
	attr_accessor :gender, :ethnicity, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity, age)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	#def celebrate_birthday
	#	@age = @age + 1
	#end

	def get_mad_at(deer)
		@reindeer_ranking.delete(deer)
		@reindeer_ranking << deer
	end
end 

#saint_nick = Santa.new("male", "black")
#saint_nick.speak
#saint_nick.eat_milk_and_cookies("almond cookie")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["elf", "orc", "dwarf", "ent", "wraith", "wizzard", "N/A"]

santas = []

# I'm not sure I understand 6.3, Release 1, "Do The Thing". Seems like the answer was given? 
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end



#gerome = Santa.new("female", "dwarf")
#gandolf = Santa.new("male", "wizzard")
#glurb = Santa.new("gender fluid", "orc")
#p gandolf

#gerome.speak
#gandolf.eat_milk_and_cookies("oatmeal cookie")
#glurb.speak

#gandolf.celebrate_birthday
#p gandolf.age

#p gandolf.reindeer_ranking
#gandolf.get_mad_at("Rudolph")
#p gandolf.reindeer_ranking

#p gandolf.gender
#gandolf.gender = "agender"
#p gandolf.gender

#p gandolf.age
#p gandolf.ethnicity

######## Release 4: Build Many, Many santas

count = 0
santa_age = Random.new
age_random = Random.new

while count < 200
	santas << Santa.new(example_genders.sample, example_ethnicities.sample, age = age_random.rand(140))
	puts "gender = " + "#{santas[count].gender}"
	puts "ethnicity = " + "#{santas[count].ethnicity}"
	puts "age = " + "#{santas[count].age}"
	count += 1
end






