hooks
mutate: aNumber from: min to: max
	|deltaVar value|
	deltaVar := aNumber * self mutationRange.
	value := aNumber + (VRandom default randomFrom: deltaVar * (-1) to: deltaVar).
	value := value min: max.
	value := value max: min.
	^ value.