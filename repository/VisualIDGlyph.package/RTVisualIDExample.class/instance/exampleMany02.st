sources
exampleMany02
| v es |
	v := RTView new.
	es := (RTVisualID new for: #yourself) elementsOn: (1 to: 100).
	v addAll: es.
	RTFlowLayout on: es.
	v