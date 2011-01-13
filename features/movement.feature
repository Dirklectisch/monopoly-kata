Feature: Move character around on the board
	In order to move a character on the board
	As the player who's turn it is
	I want to role the dice
	
	Background: 
	Given it's the players turn
	And no more than twenty rounds have been played
	
	Scenario: Move from initial position
	Given the character is still on the starting position
	When the player rolls the dice
	Then move forward the same amount of positions as the result of the die roll
	
	Scenario: Move from any position
	Given the character is on any position on the game board
	When the player rolls the dice
	Then move forward the same amount of positions as the result of the die roll
	
	Scenario: Move to a position that's occupied
	Given the character is on any position on the game board
	When the player rolls the dice
		But the destination position is already occupied by another character
	Then move forward the same amount of positions as the result of the die roll

	 
	
	