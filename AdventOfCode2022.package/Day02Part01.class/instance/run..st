execute
run: input
	"Run the AoC Day 02, Part 01 problem."
	
	|opp pla|

	^self forEachLine: input do: [:o :p | 
		opp := OpponentRPS choice: o.
		pla := PlayerRPS choice: p.
		
		"^pla versus: opp"
		pla versus: opp
	]