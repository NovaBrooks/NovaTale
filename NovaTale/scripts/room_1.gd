extends Node2D

@export var score = 0
@onready var ribbon = $Area2D/CollisionShape2D/Ribbon
@onready var knife = $Area2D2/CollisionShape2D2/Knife

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



#idk what i am doing here... if you are reading this and not me (novabrooks) i am sorry :(
#
#the code under this message is not good at all :(
#
#i dont have any excuses *makes a youtube appology video*

func _on_area_2d_body_entered(_body):
	score = score + 1
	print(score)

func _on_area_2d_2_body_entered(_body):
	score = score + 1
	print(score)
	
	
	
