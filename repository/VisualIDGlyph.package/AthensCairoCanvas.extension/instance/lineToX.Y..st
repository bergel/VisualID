*VisualIDGlyph-CoreGlyph
lineToX: x Y: y
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCall: #( void cairo_line_to ( self, double x, double y ) )