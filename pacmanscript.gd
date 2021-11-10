extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

onready var animationSprite= $AnimatedSprite

var contadorMoney = 0
var Moneyrestante = 10

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		animationSprite.play("right")
		velocity.x += 1
	elif Input.is_action_pressed("ui_left"):
		animationSprite.play("left")
		velocity.x -= 1
	elif Input.is_action_pressed("ui_down"):
		animationSprite.play("down")
		velocity.y += 1
	elif Input.is_action_pressed("ui_up"):
		animationSprite.play("up")
		velocity.y -= 1
	else:
		animationSprite.play("default")
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
