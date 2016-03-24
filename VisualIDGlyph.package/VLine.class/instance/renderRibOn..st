canvas drawing
renderRibOn: canvas
	rib isNull ifFalse:[
		(0 to: (ribCount-1)) do:[ :i|
			|spaces progress baseOffset|
			spaces := ribCount -1.
			baseOffset := -0.5.
			progress := 0.
			(spaces ~=0) ifTrue:[progress:= i/ spaces].
			canvas save.
			canvas translateTo: (0@(length*(baseOffset+ progress))).
			canvas scaleBy: (ribScale@ribScale).
			ribTaper ifNotNil:[
				|taper|
				taper := 1+ (0.5+ i/ribCount).
				ribIncrease ifFalse:[ taper := 1/taper].
				canvas scaleBy: (taper@taper).		
			].
			ribDoubleSided ifNotNil:[
				canvas translateTo: (1@0).
				canvas save.
				canvas rotateBy: (ribAngle - Float twoPi).
				rib renderPathOn: canvas.
				canvas restore.
				canvas scaleBy: (-1@1).
				canvas translateTo: (2@0).].
			canvas rotateBy: (ribAngle - Float twoPi).
			rib renderPathOn: canvas.
			canvas restore.
			].
		].