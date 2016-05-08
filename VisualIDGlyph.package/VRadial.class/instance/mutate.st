hooks
mutate
	vcScale := self mutate: vcScale from: 0.15 to: 0.7.
	mcScale := self mutate: mcScale from: 0.1 to: 0.3. 
	ecScale := self mutate: ecScale from: 0.1 to: 0.4.
	eyeSep := self mutate: eyeSep from: 0.2 to: 0.3. 
	eyeOrg := self mutate: eyeOrg from: 0.2 to: 0.3.
	mouthOrg := self mutate: mouthOrg from: (-0.3) to: (-0.2). 
	angleCutoff := self mutate: angleCutoff from: (Float pi / 1.2) to: (Float pi / 2).
	self vertexChild mutate.
	self mouthChild mutate.
	self eyeChild mutate.