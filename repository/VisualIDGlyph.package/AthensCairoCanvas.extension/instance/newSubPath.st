*VisualIDGlyph-CoreGlyph
newSubPath
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	
	^ self nbCall: #( void cairo_close_path ( self ) )