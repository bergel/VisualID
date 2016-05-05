action
id: anObject using: aGlyph
	^ ids at: anObject ifAbsentPut:[
			VisualID for: anObject using: aGlyph ]
	