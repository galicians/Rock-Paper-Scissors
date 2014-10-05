class Logic

	attr_accessor :player1, :player2
	attr_reader :rounds
	# attr_accessor :rounds

	gestures = ['Rock','Paper','Scissors','Lizzard','Spock']

	def initialize(rounds = 3)
		@rounds = rounds
	end

	def add_player(player)
		@player1 ? @player2 = player : @player1 = player unless has_two_players?
	end

	def has_two_players?
		!player2.nil?
	end



	def winner?
		return true if player_one.score == rounds
		return true if player_two.score == rounds
		false
	end

end






# Scissors cut Paper
# Paper covers Rock
# Rock crushes Lizard
# Lizard poisons Spock
# Spock smashes Scissors
# Scissors decapitate Lizard
# Lizard eats Paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes Scissors

# 	gesture = ['Rock','Paper','Scissors','Lizzard','Spock']

# 	rules = {'Rock' vs 'Scissors' => ''}
