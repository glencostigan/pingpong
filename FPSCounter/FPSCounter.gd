extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var fps = Engine.get_frames_per_second()
	text = "FPS: " + str(fps)


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("fps"):
		print("fps pressed")
		visible = !visible
