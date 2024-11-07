extends Area2D

func _on_area_entered(area: Area2D) -> void:
	if area.name == "Ball":
		# Ball went out of bounds, reset.
		area.reset()


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Ball":
		# Ball went out of bounds, reset
		get_tree().reload_current_scene()