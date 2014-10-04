Feature: Joining the game
In order to play
As a player
I will see the board after I have registered

Scenario: To join the game
	Given I am in the home page
	When I register my "name"
	Then I should be able to see the playing area