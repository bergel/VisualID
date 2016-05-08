action
trim
	| pextent sextent marginTop marginLeft marginRight marginBottom rescale strokeTop strokeLeft strokeRight strokeBottom mid |
	pextent := (canvas pathExtends expandBy: (0.001 @ 0.001)).
	canvas setLineWidth: VisualID linewidth.
	sextent := (canvas strokeExtends expandBy: (0.001 @ 0.001)).
	
	marginTop := sextent top - pextent top.
	marginLeft := pextent left - sextent left.
	marginRight := sextent right - pextent right.
	marginBottom := pextent bottom - sextent bottom.
	
	rescale := (targetSize - (( marginLeft + marginRight) max: (marginBottom + marginTop)))/ (pextent width max: pextent height).
	
	strokeTop := pextent top + (marginTop /rescale).
	strokeLeft := pextent left - (marginLeft /rescale).
	strokeRight := pextent right + (marginRight /rescale).
	strokeBottom := pextent bottom - (marginBottom /rescale).
	
	canvas newPath.
	
	canvas scaleBy: (rescale@rescale).
	mid := ((strokeLeft +strokeRight)/2)@((strokeBottom +strokeTop)/2).
	canvas translateTo: ((mid x*(-1))@(mid y*(-1))).