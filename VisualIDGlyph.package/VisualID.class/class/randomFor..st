factory
randomFor: anObject
	^ self for: (VRandom seed: anObject hash)