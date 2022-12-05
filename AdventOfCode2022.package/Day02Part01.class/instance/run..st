as yet unclassified
run: input
	"comment stating purpose of message"

	| opponent player split tally|
	
	tally := 0.
	
	input string lines do:  [ :c |
		split := c splitBy: ' '.
		opponent := OpponentRPS choice: (split at: 1).
		player := PlayerRPS choice: (split at: 2).
		
		tally := tally + (player versus: opponent).
	].

	^tally