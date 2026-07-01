extends CharacterBody2D

@onready var target = $"../player"
var speed

func _ready():
	speed = Global.speed  # grab speed from menu choice

func _physics_process(delta: float) -> void:
	var direction = (target.position - position).normalized()
	position += direction * speed * delta
	look_at(target.position)
	
	if is_instance_valid(target) and position.distance_to(target.position) < 50:
		target.queue_free()
