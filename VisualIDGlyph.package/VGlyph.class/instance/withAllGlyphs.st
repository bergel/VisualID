accessing
withAllGlyphs
	|glyphs|
	glyphs := OrderedCollection new.
	glyphs add:self.
	self childNames do:[ :name|
		|child|
		child := self perform: name.
		glyphs addAll: child withAllGlyphs.
		].
	^glyphs.