factory
for: aRandom
	"
	This is a public method. 
	This method takes as argument an instance of the class VRandom.
	"
	| glyph |
	self assert: [ aRandom class == VRandom ].
	glyph := (aRandom discrete: self glyphs) for: aRandom.
	^ self new
			glyph: glyph;
			yourself