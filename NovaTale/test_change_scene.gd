extends Area2D

@onready var Player = "res://player.tscn"
@onready var animation = $CharacterBody2D/CollisionShape2D/FriskDownWalk/AnimationPlayer

func _on_body_entered(Player):
	
	get_tree().change_scene_to_file("res://room002.tscn")
