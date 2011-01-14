Feature: Move around on the board
	In order buy property
	As the player
	I want to move my token around the board
	
	Background: 
	Given it's the players turn
	And no more than twenty rounds have been played
	
	Scenario: Move from initial position
	Given the character is on the starting position on the board
	When the player rolls the dice
	Then your token moves forward the number of spaces indicated by the dice
	
	Scenario: Move from any position
	Given the character is on any position on the board
	When the player rolls the dice
	Then your token moves forward the number of spaces indicated by the dice
	
	Scenario: Move to a position that's occupied
	Given the character is on any position on the game board
	When the player rolls the dice
		But the destination position is occupied by another character
	Then your token moves forward the number of spaces indicated by the dice
	
	