sources
exampleManyClasses
	" it generates a random visual ID for each class"
	| v es |
	v := RTView new.
	es := (RTVisualID new for: #className) elementsOn: RTShape withAllSubclasses.
	v addAll: es.
	RTFlowLayout on: es.
	^ v