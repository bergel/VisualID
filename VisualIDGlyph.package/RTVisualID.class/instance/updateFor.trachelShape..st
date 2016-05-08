hooks
updateFor: anElement trachelShape: trachelShape
	| ex elementVisualID|
	trachelShape isNil ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	elementVisualID := self vidFor: anElement.
	elementVisualID extent: (ex - (10@10)). "bad fix"
	elementVisualID lineColor: (self lineColorFor: anElement).
	elementVisualID shadowColor: (self shadowColorFor: anElement).
	trachelShape extent: ex.
	trachelShape visualID: elementVisualID.
