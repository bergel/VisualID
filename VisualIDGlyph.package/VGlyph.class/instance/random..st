accessing
random: aRandom
	random := aRandom.
	self assert: [ random class == VRandom ].