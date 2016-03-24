tests
testDiscrete
	self assert: ((VRandom new seed: 20) discrete: #('one' 'two' 'three')) equals: 'one'