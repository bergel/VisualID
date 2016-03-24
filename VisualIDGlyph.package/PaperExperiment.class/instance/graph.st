public - producing visualization
graph
	"
	self new graph
	"
	| cls b es |
	cls := self classesForGraph.
	
	b := RTMondrian new.
	b shape circle size: 30; color: Color blue trans.

	es := b nodes: cls.
	b shape arrowedLine shortestDistanceAttachPoint.
	b edges
		connectToAll: [ :model | model dependentClasses copyWithout: model ].
	b layout forceWithCharge: -3000.
	b build.
	es @ (RTLabeled new fontSize: 20; color: Color black; text: [ :c | cls indexOf: c ]).
	^ b view
