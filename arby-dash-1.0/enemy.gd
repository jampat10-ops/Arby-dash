extends CharacterBody2D

@onready var target = $"../player"
var speed = 150
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta: float) -> void:
	# Add gravity so it stays on ground
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# Chase player horizontally
	var direction = (target.position - position).normalized()
	velocity.x = direction.x * speed
	
	# Jump if player is above OR if hitting a wall
	if is_on_floor() and (target.position.y < position.y - 10 or is_on_wall()):
		velocity.y = -400
	
	look_at(target.position)
	move_and_slide()
	
	# Kill player on touch
	if is_instance_valid(target) and position.distance_to(target.position) < 70:
		target.queue_free()
