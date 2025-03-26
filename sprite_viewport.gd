extends SubViewport


@export var model: Node3D  # Drag your model here
@export var sprite_folder: String = "res://Sprites/"  # Output folder
@export var angles: int = 8  # Number of rotations

func _ready():
	for i in range(angles):
		await RenderingServer.frame_post_draw  # Ensure the frame is rendered
		capture_sprite(i)
		model.rotate_y(deg_to_rad(360 / angles))  # Rotate model

func capture_sprite(index):
	var img = get_texture().get_image()
	img.save_png(sprite_folder + "sprite_" + str(index) + ".png")
	print("Saved sprite:", sprite_folder + "sprite_" + str(index) + ".png")
