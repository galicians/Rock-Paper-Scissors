require './lib/logic'



def rules

@RULES = { 			['Rock','Scissors'] 	=> { first_wins: 			'Rock crushes Scissors'},
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

end

rules					