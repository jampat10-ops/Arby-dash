extends Node

func _on_easy_pressed():
	Global.speed = 90
	get_tree().change_scene_to_file("res://Level 1.tscn")

func _on_medium_pressed():
	Global.speed = 110
	get_tree().change_scene_to_file("res://Level 1.tscn")

func _on_hard_pressed():
	Global.speed = 126
	get_tree().change_scene_to_file("res://Level 1.tscn")

func _on_easy_button_pressed():
	_on_easy_pressed()

func _on_medium_button_pressed():
	_on_medium_pressed()

func _on_hard_button_pressed():
	_on_hard_pressed()
