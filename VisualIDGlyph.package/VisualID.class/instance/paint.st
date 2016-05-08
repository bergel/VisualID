accessing
paint
	paint ifNil:[
		self update.
		paint := AthensCairoPatternSurfacePaint createForSurface: canvas surface ].
	^ paint	