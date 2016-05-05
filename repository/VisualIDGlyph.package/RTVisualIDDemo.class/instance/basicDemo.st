demos
basicDemo
"Creates a random glyph for ignacio every time"
	| v s |
	v := RTView new.
	s := RTVisualID newFor: 'ignacio'.
	v add: s element.
	v