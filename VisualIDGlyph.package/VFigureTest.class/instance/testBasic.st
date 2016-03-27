tests
testBasic
	self assert: f parent isNull.
	self assert: f head isNull.
	self assert: f tail isNull.
	self assert: f leg isNull.
	self assert: f headScale equals: VFigure defaultHeadScale.
	self assert: f tailScale equals: VFigure defaultTailScale.
	self assert: f legScale equals: VFigure defaultLegScale.
	self assert: f complexity equals: 1