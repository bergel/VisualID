initialize-release
initialize
	super initialize.
	width := self class width.
	height := self class height.
	lineColor := Color black.
	shadowColor := Color white.
	targetSize := 2.
	self reset.
	