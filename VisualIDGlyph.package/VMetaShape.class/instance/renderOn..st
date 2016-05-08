canvas drawing
renderOn: canvas
	|currentPoint|
	currentPoint := canvas currentPoint.
	canvas newSubPath.
	canvas save.
	(1 to: n) do:[ :i|
		(i < n) ifTrue:[
			canvas lineTo: ((0@ (points at:i))).
			outlineChild isNull ifFalse:[
				canvas save.
				canvas translateTo: ((0@ (points at:i))).
				canvas scaleBy: ((ocScale@ocScale)).
				outlineChild renderPathOn: canvas.
				canvas restore.].
			
			insideChild isNull ifFalse:[
				|angleInside r rPlus rMinus|
				angleInside := maxAngle / n.
				r := (points at:i).
				rPlus := (points at: (i+1)).
				rMinus := 0.
				rMinus := ((i==1) ifTrue:[ 
										(maxAngle < Float twoPi) 
											ifTrue:[(points at: i)*2- rPlus]
											ifFalse:[points at: (n-1)]]
										ifFalse:[ points at:(i-1)]).
				canvas save.
				canvas translateTo: ((0@(points at:i))).
				canvas rotateBy: (((self outerAngle: r plus: rPlus inside: angleInside) -
										(self outerAngle: r plus: rMinus inside: angleInside))/2).
				canvas translateTo: ((0@(icScale*4*(-1)))).
				canvas scaleBy: ((icScale@icScale)).
				insideChild renderPathOn: canvas.
				canvas restore.
				].
			canvas rotateBy: (maxAngle/n).
			].
		].
		canvas restore.
		(maxAngle = Float twoPi) ifTrue:[
			canvas lineTo: ((0@ (points at:1))).
			canvas closePath.
			].
		canvas newSubPath.
		canvas moveTo: currentPoint.