extends CharacterBody2D

@onready var target = $"../player"
var speed = 110

func _physics_process(delta: float) -> void:
	var direction = (target.position - position).normalized()
	position += direction * speed * delta
	look_at(target.position)
	
	# Kill player on touch
	if is_instance_valid(target) and position.distance_to(target.position) < 70:
		target.queue_free()
		get_tree().change_scene_to_file("res://lose_screen.tscn")
