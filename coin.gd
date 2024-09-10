extends Area2D

@onready var Animation_player = $AnimationPlayer

func _on_body_entered(body):
	
	Animation_player.play("coin")
	
