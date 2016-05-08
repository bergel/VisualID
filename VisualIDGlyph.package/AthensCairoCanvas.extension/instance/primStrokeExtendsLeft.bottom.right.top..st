*VisualIDGlyph-CoreGlyph
primStrokeExtendsLeft: left bottom: bottom right: right top: top
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self nbCall: #( void cairo_stroke_extents (self, double * left, double * bottom, double * right, double * top))