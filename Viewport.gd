extends Viewport

func _ready():
    var angles = 10  # Amount of angles to render

    for n in angles:
        # Wait for rendering
        await RenderingServer.frame_post_draw  
        capture(n)  # Capture
        $Model.rotate_y(deg_to_rad(360 / angles))  # Rotate object

func capture(index):
    var img = $Viewport.get_texture().get_image()  # Get rendered image
    img.save_png("capture_" + str(index) + ".png")  # Save to disk
