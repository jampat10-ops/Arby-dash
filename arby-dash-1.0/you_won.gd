extends Node

func _on_restart_pressed():
	get_tree().change_scene_to_file("res://difficulties_menu.tscn")

func _on_button_pressed():
	_on_restart_pressed()
