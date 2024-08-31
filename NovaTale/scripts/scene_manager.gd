class_name SceneManager extends Node

@onready var player = $CollisionShape2D/FriskDownWalk/AnimationPlayer

var scene_dir_path = "res://"

func change_scene(from, to_scene_name: String) -> void:
	player = from.player
	player.get_parent().remove_child(player)
	
	var full_path = scene_dir_path + to_scene_name + ".tscn"
	from.get_tree().call_deferred("change_scene_to_file", full_path)
