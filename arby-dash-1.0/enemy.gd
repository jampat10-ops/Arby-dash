extends CharacterBody2D

@onready var target = $"../player"
var speed

func _ready():
	speed = Global.speed

func _physics_process(delta: float) -> void:
	if not is_instance_valid(target):
		return
	
	var direction = (target.position - position).normalized()
	position += direction * speed * delta
	look_at(target.position)
	
	if position.distance_to(target.position) < 70:
		target.queue_free()
		get_tree().change_scene_to_file("res://lose_screen.tscn")
