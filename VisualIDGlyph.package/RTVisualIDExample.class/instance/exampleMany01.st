sources
exampleMany01
| v es |
	v := RTView new.
	es := (RTVisualID newFor: 'ignacio') elementsOn: (1 to: 10).
	v addAll: es.
	RTFlowLayout on: es.
	^ v