initialization-release
initialize
	super initialize.
	head := VNull new.
	head parent: self.
	leg := VNull new.
	leg parent: self.
	tail := VNull new.
	tail parent: self.
