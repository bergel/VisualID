hooks
mutate
	headScale := (VRandom default randomFrom:0.1 to:0.2).
	legScale := (VRandom default randomFrom:0.3 to:0.6).
	tailScale := (VRandom default randomFrom:0.1 to:0.4).
	self head mutate.
	self tail mutate.
	self leg mutate.