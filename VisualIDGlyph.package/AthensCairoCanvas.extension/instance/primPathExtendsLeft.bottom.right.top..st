*VisualIDGlyph-CoreGlyph
primPathExtendsLeft: left bottom: bottom right: right top: top
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^self nbCall: #( void cairo_path_extents (self, double * left, double * bottom, double * right, double * top))