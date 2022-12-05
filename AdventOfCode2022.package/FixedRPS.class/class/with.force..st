instance creation
with: opponent force: outcome
	"Given what our opponent will play, create a player to force a specific outcome"
	
	|rock paper scissors lose draw win|
	
	rock := self encrypt: 1.
	paper := self encrypt: 2.
	scissors := self encrypt: 3.
	lose := 1.
	draw := 2.
	win := 3.

	"Rock"
	opponent decrypt = 1 ifTrue: [
		(super decrypt: outcome) = lose ifTrue: [
			^super choice: scissors
		].
		(super decrypt: outcome) = draw ifTrue: [
			^super choice: rock
		].
		(super decrypt: outcome) = win ifTrue: [
			^super choice: paper
		].
	].

	"Paper"
	opponent decrypt = 2 ifTrue: [
		(super decrypt: outcome) = lose ifTrue: [
			^super choice: rock
		].
		(super decrypt: outcome) = draw ifTrue: [
			^super choice: paper
		].
		(super decrypt: outcome) = win ifTrue: [
			^super choice: scissors
		].
	].

	"Scissors"
	opponent decrypt = 3 ifTrue: [
		(super decrypt: outcome) = lose ifTrue: [
			^super choice: paper
		].
		(super decrypt: outcome) = draw ifTrue: [
			^super choice: scissors
		].
		(super decrypt: outcome) = win ifTrue: [
			^super choice: rock
		].
	].