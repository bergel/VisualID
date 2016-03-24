drawing
renderChildOn: canvas
	canvas save.
	(1 to: n)
		do: [ :i | 
			canvas save.
			canvas rotateBy: (2 * Float pi / n * (i + 0.5)).
			canvas translateTo: (0 @ offset).
			canvas scaleBy: (cScale @ cScale).
			(i \\ 2) isZero
				ifFalse: [ canvas scaleBy: (-1 @ 1) ].
			child renderPathOn: canvas.
			canvas restore. ].
	canvas restore.