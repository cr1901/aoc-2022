execute
run: input
	"Run the AoC Day 01, Part 02 problem."
	
	|cals tally|
	cals := self totalCalories: input.
	tally := 0.
	
	(cals sorted: [:a :b| a >= b]) from: 1 to: 3 do: [:t |
		tally := tally + t.
	].
	^tally
