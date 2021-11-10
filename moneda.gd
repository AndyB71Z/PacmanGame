extends Area2D

onready var animationPlayer = $AnimatedSprite

func _physics_process(_delta):
	var bodies= get_overlapping_bodies()
	animationPlayer.play("default")
	
	for body in bodies:
		if body.name == "KinematicBody2D":
			body.contadorMoney= body.contadorMoney +1
			body.Moneyrestante= body.Moneyrestante -1
			get_parent().remove_child(self)
			print("Dinero: ")
			print(body.contadorMoney)
			print("Restante: ")
			print(body.Moneyrestante)
