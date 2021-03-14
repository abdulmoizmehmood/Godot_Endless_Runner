extends Node

const objects = preload("res://Objects/enemy.tscn")

func _ready():
	_on_T_EnemySpawn_timeout()
	pass
	
func _on_T_EnemySpawn_timeout():
	randomize()
	var object = objects.instance()
	var Rand_X = rand_range(-3.0,3.0)*5
	var Rand_Scale = rand_range(1,5)
	var pos = object.get_translation()
	pos.z = -500
	pos.y = 3
	pos.x = pos.x - Rand_X
	object.set_translation(pos)
	var scale = object.get_scale()
	scale.x = scale.x * Rand_Scale
	object.set_scale(scale)
	add_child(object)
	pass
