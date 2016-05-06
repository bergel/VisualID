hooks
mutate
	length := self mutate: length from: 0.1 to: 0.5.
	ribCount := random virand: 3 range: 10 biased: 1.5.
	ribScale := random virand: 0.05 range: 0.7 biased: 1.5.
	ribAngle := random randomFrom: (Float pi * -1) to: Float pi.
	tailScale := self mutate: tailScale from: 0.15 to: 0.6.
   headScale := self mutate: headScale from: 0.15 to: 0.6.
	self head mutate.
	self tail mutate.
	self rib mutate.

