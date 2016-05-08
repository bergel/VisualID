tests
testSeed
	|v rand|
	v := VRandom new.
	v seed: 20.
	rand := v randomFrom: 1 to: 5.
	self assert: rand equals: 1.000626109540754
	
	