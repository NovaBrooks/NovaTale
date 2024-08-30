extends Control

func _ready():
	$Panel/VBoxContainer/Start.grab_focus()


func _on_exit_pressed():
	get_tree().quit()


func _on_continue_pressed():
	pass #contiunue on a later date




func _on_start_pressed():
	get_tree().change_scene_to_file("res://Room001.tscn")
