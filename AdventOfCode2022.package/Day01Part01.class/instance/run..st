execute
run: input
	"run using an arbitrary input string."

	|ord tally|
	ord := OrderedCollection new.
	tally := 0.
	
	input string lines do:  [ :l |
	 l = ''
	 	ifTrue: [ ord add: tally. tally := 0. ]
		ifFalse: [ tally := tally + l asInteger ]
	].

	"input may not be terminated with two newlines."
	ord add: tally.
	^ord max.