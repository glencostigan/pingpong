extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello from main!")
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("reset_scene"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
