hooks
synthWave
	n ifNotNil:[
		(1 to:n) do:[ :i|
			|angle|
			angle := maxAngle * i/n.
			points at: i put: 0.5.
			(1 to: ncoef) do:[:j|
				points at:i put:  ((points at:i) +(coefficients at:j) * ((j+1)*angle) sin /2).].
			].		
		].