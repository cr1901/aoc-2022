execute
versus: other 
	"Play a game of Rock Paper Scissors."

	|extra|
	
	extra := 6.

	"Tie"
	self decrypt = other decrypt ifTrue: [
		extra := 3.
		^(Points at: self decrypt) + extra
	].

	"Rock"
	self decrypt = 1 ifTrue: [
		"Loss"
		other decrypt = 2 ifTrue: [
			extra := 0
		]
	].

	"Paper"
	self decrypt = 2 ifTrue: [
		"Loss"
		other decrypt = 3 ifTrue: [
			extra := 0
		]
	].

	"Scissors"
	self decrypt = 3 ifTrue: [
		"Loss"
		other decrypt = 1 ifTrue: [
			extra := 0
		]
	].

	^(Points at: self decrypt) + extra
	