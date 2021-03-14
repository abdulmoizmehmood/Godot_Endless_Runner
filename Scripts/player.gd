extends KinematicBody
#---VARS---# 
var vel = Vector3(0,0,0)
const vel_mag = 7
const jump_mag = 8
const gravity = 20
#---END VARS---#

#---FUNCTIONS---#
func _ready():
	pass

	# MOVE and Rotate
func _physics_process(delta):
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_right"):
		vel.x = 0
	elif Input.is_action_pressed("ui_left"):
		vel.x = -vel_mag
	elif Input.is_action_pressed("ui_right"):
		vel.x = vel_mag
	else:
		vel.x = lerp(vel.x,0,0.2)
	if Input.is_action_pressed("ui_down") and not is_on_floor():
		vel.y = -vel_mag*2
	move_and_slide(vel)
	
	# JUMP
	if not is_on_floor():
		vel.y -= gravity*delta
	move_and_slide(vel, Vector3.UP)

	if Input.is_action_pressed("ui_jump") and is_on_floor() and not Input.is_action_pressed("ui_down"):
			vel.y = jump_mag
			
#---END FUNCTIONS---#
