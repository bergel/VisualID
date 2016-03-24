sources
exampleSimilarClasses
| data basedOn v shape es lbl |
	data := RTNestingBehavior allSubclasses.
	basedOn := [:cls | cls selectors asSortedCollection ].

	v := RTView new.

	shape := RTVisualID new.
	shape basedOn: basedOn.
	shape score: 0.7.

	es := shape elementsOn: data.
	es @ RTPopup.
	v addAll: es.

	RTHorizontalLineLayout on: es.

	lbl := RTLabel elementOn: ((VJaccard new compare: (basedOn rtValue: data first) with: (basedOn rtValue: data second)) round: 2).
	v add: lbl.
	^ v