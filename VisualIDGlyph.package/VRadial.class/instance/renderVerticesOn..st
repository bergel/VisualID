canvas drawing
renderVerticesOn: canvas

	(-1 to: numVertices)
		do: [ :i | 
			| angle vx vy jump|
			angle := Float pi * 2 * i / numVertices.
			vx := -1 * angle sin * 0.6.
			vy := angle cos * 0.6.
			canvas lineTo: (vx @ vy). 
			jump := false.
			((i >= 0) and: [ vertexChild isNull not ]) ifTrue:
					[((angle > angleCutoff) and: ((Float pi * 2 - angle )> angleCutoff)) ifTrue:  
							[ jump := true. ] .
			jump ifFalse:[
				canvas save.
				canvas translateTo: (vx @ vy).
				canvas rotateBy: angle.
				canvas scaleBy: (vcScale @ vcScale).
				vertexChild renderPathOn: canvas.
				canvas restore]. ].
		]. 
	canvas closePath.