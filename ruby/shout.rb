=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

puts Shout.yell_angrily("DANG")

puts Shout.yelling_happily("YES")
=end

module Shout
  def yell_angrily(words)
   puts words + "!!!" + " :("
  end

  def yelling_happily(words)
   puts words + "!!!" + " :)"
  end
end

class Old_Man
	include Shout
end

class Toddler
	include Shout
end

hector = Old_Man.new
hector.yell_angrily("Stay off my lawn")

jack = Toddler.new
jack.yelling_happily("Candy")