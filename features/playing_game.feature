Feature: Playing Rock, Paper, Scissors
	To win
	As a player
	I will play against the computer

	Scenario: I win a round, rock vs scissors
		Given I am in the playing area
		And I choose rock
		And the machine chooses scissors
		Then I will win one to cero