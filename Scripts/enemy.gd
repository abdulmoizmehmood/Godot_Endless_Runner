extends RigidBody

var pos = Vector3()
var random = random
var speed : float = 200

func _physics_process(delta):
	pos = get_translation()
	pos.z += speed*delta
	pos.y = 3
	set_translation(pos)
	pass
