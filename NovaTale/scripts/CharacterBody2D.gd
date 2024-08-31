extends CharacterBody2D

@export var speed = 100
@onready var animation = $CollisionShape2D/FriskDownWalk/AnimationPlayer
@onready var menu1test1 = $CollisionShape2D/FriskDownWalk/Camera2D/Control

func _ready():
	pass
func handleInput():
	var movedirection = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = movedirection * speed

func Close_game_with_esc():
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func updateAnimation():
	if velocity.length() == 0:
		animation.stop()
		
	else:
		var direction = "walk"
		if velocity.x < 0: direction = "walk_left"
		elif velocity.x > 0: direction = "walk_right"
		elif velocity.y < 0: direction = "walk_up"	
		animation.play(direction)

func show_menu_c():
	if menu1test1.visible == false:
		if Input.is_action_just_pressed("c_for_cancel"):
			menu1test1.set_visible(true)
	elif menu1test1.visible == true:
		if Input.is_action_just_pressed("c_for_cancel"):
			menu1test1.set_visible(false)

func _physics_process(_delta):
	handleInput()
	move_and_slide()
	updateAnimation()
	show_menu_c()
	Close_game_with_esc()
