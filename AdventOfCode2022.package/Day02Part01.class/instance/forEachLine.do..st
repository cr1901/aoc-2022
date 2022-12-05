execute
forEachLine: input do: blk
	"comment stating purpose of message"

	|split tally|
	
	tally := 0.
	
	input string lines do:  [ :c |
		split := c splitBy: ' '.		
		tally := tally + (blk value: (split at: 1) value: (split at: 2)).
	].

	^tally