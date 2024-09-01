extends Control

func _ready():
	$Panel/VBoxContainer/Start.grab_focus()


func _on_exit_pressed():
	get_tree().quit()


func _on_continue_pressed():
	pass

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/Room001.tscn")
