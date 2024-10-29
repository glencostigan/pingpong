extends CharacterBody2D

@export var SPEED = 20.0
#@export var elasticity = 0.75


func _ready() -> void:
	velocity = Vector2(-SPEED, 0)


func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(velocity)
	if collision:
		var normal := collision.get_normal()
		velocity = velocity.bounce(normal)  #* elasticity
