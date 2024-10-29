extends Area2D

@export var speed = 750
@export var direction = -1 

func _physics_process(delta: float) -> void:
	position += transform.x * direction * speed * delta

func _on_body_entered(body: Node2D) -> void:
	print('boom!')
	direction = direction * -1
	#body.queue_free()
