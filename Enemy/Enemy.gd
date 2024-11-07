extends RigidBody2D

var ball: CharacterBody2D
const SPEED = 30000

func _ready() -> void:
	ball = get_parent().get_node("Ball")


func _physics_process(delta):
	# calculate the direction towards the ball
	var direction = (ball.position - position).normalized()
	
	# move the paddle towards the ball
	linear_velocity.y = direction.y * SPEED * delta