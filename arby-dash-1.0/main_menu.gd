extends Node

func _on_easy_pressed():
	Global.speed = 100
	get_tree().change_scene_to_file("res://stuff/Level 1.tscn")

func _on_medium_pressed():
	Global.speed = 122
	get_tree().change_scene_to_file("res://stuff/Level 1.tscn")

func _on_hard_pressed():
	Global.speed = 145
	get_tree().change_scene_to_file("res://stuff/Level 1.tscn")
