extends Area2D

func _on_area_2d_body_entered(body):
	print("HIT: ", body.name)
	if body.is_in_group("player"):
		body.die()
