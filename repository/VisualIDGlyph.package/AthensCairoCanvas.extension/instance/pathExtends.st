*VisualIDGlyph-CoreGlyph
pathExtends
	|l b r t|
	l := ByteArray new: 8.
	b := ByteArray new: 8.
	r := ByteArray new: 8.
	t := ByteArray new: 8.
	self primPathExtendsLeft: l bottom: b right: r top: t.
	^ Rectangle 
		left: (l doubleAt: 1)
		right: (r doubleAt: 1)  
		top: (t doubleAt: 1) 
		bottom: (b doubleAt: 1). 