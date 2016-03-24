factory
newFor: anObject
	|inst|
	inst := self new.
	inst visualID: (VisualID randomFor: anObject).
	^  inst.