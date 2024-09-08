extends Node2D

const speed =60
var dir=1
@onready var ray_cast_r = $"RayCast r"
@onready var ray_cast_l = $"RayCast l"
@onready var animated_sprite_2d = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_r.is_colliding():
		dir=-1
		animated_sprite_2d.flip_h= true
	if ray_cast_l.is_colliding():
		dir=1
		animated_sprite_2d.flip_h=false
	position.x += dir*speed * delta
