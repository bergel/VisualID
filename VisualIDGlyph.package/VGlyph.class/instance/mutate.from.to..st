hooks
mutate: aNumber from: min to: max
	|deltaVar value|
	deltaVar := aNumber * self mutationRange.
	value := aNumber + (random randomFrom: deltaVar * (-1) to: deltaVar).
	value := value min: max.
	value := value max: min.
	^ value.