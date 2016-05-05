hooks
mutate
	super mutate.
	icScale := self mutate: icScale from: 0.1 to: (2 / n ).
	self insideChild mutate.