*VisualIDGlyph-CoreGlyph
strokePreserve
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCall: #(void cairo_stroke_preserve (self))
