factory
from: anObject
	|root child child2 |
	root :=  (VObjectCluster default id: ('Class:', anObject class superclass name)) glyph clone.
	child := (VObjectCluster default id: ('Class:',anObject class name)) glyph clone.
	child parent: root.
	root perform: (root class keyChild,':') asSymbol with: child.
	child2 := (VObjectCluster default id: (anObject)) glyph clone. 
	child2 parent: child.
	child perform: (child class keyChild,':') asSymbol with: child2.
	^ root.
	