drawing
renderPathOn: canvas
	"visualid_draw_path"
	canvas save.
	self renderOn: canvas.
	canvas restore.