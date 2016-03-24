hooks
complexity
	^ 1 + head complexity 
			+ tail complexity 
			+ ((ribDoubleSided ifTrue:[2] ifFalse:[1]) * rib complexity * ribCount).
