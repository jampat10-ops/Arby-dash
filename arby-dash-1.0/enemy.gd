extends CharacterBody2D

@onready var target = $"../player"
var speed = 144

func _physics_process(delta: float) -> void:
	var direction = (target.position - position).normalized()
	position += direction * speed * delta
	look_at(target.position)
	
	# Kill player on touch
	if is_instance_valid(target) and position.distance_to(target.position) < 70:
		target.queue_free()
