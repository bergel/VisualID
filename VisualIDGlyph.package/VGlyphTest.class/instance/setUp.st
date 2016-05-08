running
setUp
	super setUp.
	random := VRandom seed: 42.
	f := self glyphClassToTest for: random