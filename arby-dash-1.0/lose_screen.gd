extends Node

func _on_restart_pressed():
	get_tree().change_scene_to_file("res://difficulties_menu.tscn")
