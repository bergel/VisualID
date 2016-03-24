sources
exampleSimilarArray
| data v shape es lbl |
	data := #( #(1 2 3 4) #(1 2 3 4 5 6 7 )).

	v := RTView new.

	shape := RTVisualID new.
	shape basedOn: #yourself.      

	es := shape elementsOn: data.
	es @ RTPopup.
	v addAll: es.

	RTHorizontalLineLayout on: es.

	lbl := RTLabel elementOn: ((VJaccard new compare: data first with: data second) round: 2).
	v add: lbl.
	^ v