hooks
outerAngle: r plus: rPlus inside: angleInside
	|y1 x theta1|
	y1 := rPlus * angleInside cos - r.
   x := rPlus * angleInside sin.
   theta1 := (x / y1) arcTan.
   theta1 < 0 ifTrue:[ theta1 := theta1 + Float pi].
  	^ theta1.