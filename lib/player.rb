class Player

	attr_accessor :points, :weapons, :name

	def initialize(weapons = ["Lizzard", "Paper", "Rock", "Scissors", "Spock"])
		@weapons = weapons
		@points = 0
	end

	def weapon(choice)
		return choice if weapons.include? choice
		raise "Not an authorized weapon"
	end

end