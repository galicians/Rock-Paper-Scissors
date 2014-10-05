class Player

	attr_accessor :points, :gestures

	def initialize(gestures = ['Rock','Paper','Scissors','Lizzard','Spock'])
		@gestures = gestures
		@points = 0
	end

	def gesture(choice)
		return choice if gestures.include? choice.downcase.capitalize!
		raise "Not a gesture"
	end


end