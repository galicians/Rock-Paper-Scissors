class Logic

	attr_accessor :player1, :player2
	attr_reader :rounds
	# attr_accessor :rounds

	WEAPONS = ["Lizard", "Paper", "Rock", "Scissors", "Spock"]

	RULES = { ['Rock','Scissors'] 	=> { first_wins: 			'Rock crushes Scissors'},
					['Paper','Scissors'] 	=> { second_wins: 		'Scissors cut Paper'},
					['Paper','Rock'] 			=> { first_wins: 			'Paper covers Rock'},
					['Lizard','Rock'] 		=> { second_wins: 		'Rock crushes Lizard'},
					['Lizard','Spock'] 		=> { first_wins: 			'Lizard poisons Spock'},
					['Scissors','Spock'] 	=> { second_wins: 		'Spock smashes Scissors'},
					['Lizard','Scissors'] => { second_wins:			'Scissors decapitate Lizard'},
					['Lizard','Paper'] 		=> { first_wins: 			'Lizard eats Paper'},
					['Paper','Spock']			=> { first_wins: 			'Paper disproves Spock'},
					['Rock','Spock'] 			=> { second_wins: 		'Spock vaporizes Rock'},
					['Rock','Scissors'] 	=> { first_wins: 			'Rock crushes Scissors'}	}


	def initialize(rounds = 3)
		@rounds = rounds
	end

	def add_player(player)
		@player1 ? @player2 = player : @player1 = player unless has_two_players?
	end

	def has_two_players?
		!player2.nil?
	end

	def pairing
		[player1.weapon , player2.weapon].sort!
	end

	def tie?
		player1.weapon == player2.weapon
	end
	
	def current_round_result
		update_scores
		RULES[pairing].value
	end

	def round_winner
		RULES[pairing].keys == [:first_wins] ? pairing.first == player1.weapon ? player1 : player2 : pairing.last == player1.weapon ? player1 : player2
	end

	def update_scores
			round_winner == player1 ? player1.points += 1 : player2.points += 2
	end
	
	def end_game?
		return true if player_one.score == rounds
		return true if player_two.score == rounds
		false
	end


end



