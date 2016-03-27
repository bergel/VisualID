initialization-release
initialize
	super initialize.
	headGlyph := VNull new.
	headGlyph parent: self.
	legGlyph := VNull new.
	legGlyph parent: self.
	tailGlyph := VNull new.
	tailGlyph parent: self.
	
	headScale := self class defaultHeadScale.
	legScale := self class defaultLegScale.
	tailScale := self class defaultTailScale.