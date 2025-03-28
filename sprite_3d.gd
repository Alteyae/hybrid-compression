extends Sprite3D

@export var frame_speed: float = 30.0  # Adjust this to control animation speed
var total_frames = 359  # Number of frames in your sprite sheet
var current_frame = 0
var timer = 0.0

func _ready():
	# Set the number of horizontal and vertical frames in your sprite sheet
	hframes = 20  # Adjust based on your sprite sheet layout
	vframes = 18  # Adjust based on your sprite sheet layout

func _process(delta):
	timer += delta
	if timer >= (1.0 / frame_speed):
		timer = 0.0
		current_frame = (current_frame + 1) % total_frames
		frame = current_frame  # Move to the next sprite in the sheet
