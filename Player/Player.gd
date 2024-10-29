extends CharacterBody2D

@export var SPEED := 800.0


func get_y_direction() -> float:
	return Input.get_action_strength("move_down") - Input.get_action_strength("move_up")


func _physics_process(delta: float) -> void:
	var dir: Vector2 = Vector2(0, get_y_direction())
	velocity = dir * SPEED
	move_and_slide()
