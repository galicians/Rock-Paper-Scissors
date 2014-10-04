Feature: Joining the game
In order to play
As a player
I will see the board after I have registered

Scenario: To join the game
	Given I am in the home page
	When I register my "name"
	When I choose "algorithm" as opponent
	Then I should be place on the playing area