execute
run: input
	"Run the AoC Day 02, Part 02 problem."
	
	|opp pla|

	^self forEachLine: input do: [:o :p | 
		opp := OpponentRPS choice: o.
		pla := FixedRPS with: opp force: p.
		
		"^pla versus: opp"
		pla versus: opp
	]