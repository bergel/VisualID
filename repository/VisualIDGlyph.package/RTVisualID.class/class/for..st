factory
for: anInstanceOrBlock
	|inst|
	inst := self new.
	inst for: anInstanceOrBlock.
	^ inst.