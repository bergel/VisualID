hooks
mutate
	| level |
	level := self level.
	n := (2 ** (VRandom default randomLevelFrom: 3 to: 5 at: level)) asInteger.
	points := Array new: (n+1).
	(1 to: (n+1)) do:[ :i |points at: i put: 0.5.].
	(1 to: ncoef) do:[ :j|
		|current|
		current := coefficients at: j. 
		coefficients  at: j put: (self mutate: current from: (-1) to:1).
		(1 to: (n+1)) do:[ :i|
			|angle|
			angle := maxAngle * i/n.
			points at:i put:  (points at:i) +((coefficients at:j) * ((j+1)*angle) sin /2).].].
	ocScale := self mutate: ocScale from: 0.1 to: 0.6.
	self outlineChild mutate.