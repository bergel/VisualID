hooks
mutate
	offset := self mutate: offset from: 0.1 to: 0.5.
	cScale := self mutate: cScale from: (0.3 *(1-offset)) to: (0.6*(1-offset)).
	self child mutate