sources
exampleBasic

	| v s |
	v := RTView new.
	s := RTVisualID new.
	s visualID: (VisualID randomFor:'ignacio').
	v add: s element.
	^ v
