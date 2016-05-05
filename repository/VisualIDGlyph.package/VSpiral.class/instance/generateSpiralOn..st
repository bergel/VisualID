canvas drawing
generateSpiralOn: canvas
	(1 to: length)
		do: [ :i | 
			| theta r vx vy |
			theta := 2 * Float pi * i asFloat / ppr asFloat.
			r := 0.15 * (theta ** 0.5).
			vx := -1 * r * theta sin.
			vy := r * theta cos.
			canvas lineTo: (vx @ vy).
			self
				generateOuterChildOn: canvas
				withAngle: theta
				atX: vx
				atY: vy ]