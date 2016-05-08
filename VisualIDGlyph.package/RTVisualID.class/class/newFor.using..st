factory
newFor: anObject using: aGlyph
	|inst|
	inst := self new.
	inst visualID: (VisualID for: anObject using: aGlyph).
	^  inst.