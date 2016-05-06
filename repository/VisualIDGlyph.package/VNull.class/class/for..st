factory
for: random
	self assert: [ random class == VRandom ].
	^ VNull new random: random; yourself