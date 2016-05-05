action
reset
	canvas := VCairoCanvas from: (AthensCairoCanvas on: (AthensCairoSurface extent: (self width)@ (self height))).
	paint := nil.