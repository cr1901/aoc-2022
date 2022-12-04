execute
totalCalories: input
	"Run the AoC Day 01, Part 01 problem."

	|ord tally|
	ord := OrderedCollection new.
	tally := 0.
	
	input string lines do:  [ :l |
	 l = ''
	 	ifTrue: [ ord add: tally. tally := 0. ]
		ifFalse: [ tally := tally + l asInteger ]
	].

	"Input may not be terminated with two newlines."
	ord add: tally.
	^ord