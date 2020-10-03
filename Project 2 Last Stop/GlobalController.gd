extends RigidBody2D

var originalPosx = get_position().x
var originalPosy = get_position().y
var originalRotx = get_rotation()
var stopMotion = Vector2 (0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass

func _integrate_forces(state):
	var timeBoxOrigin = state.get_transform()
	var timeBoxRotOrigin = state.get_transform().rotated(0)
	if(Input.is_action_just_pressed("Reset")):
		#timeBoxOrigin.origin = node_container 
		timeBoxOrigin.origin.x = originalPosx
		timeBoxOrigin.origin.y = originalPosy

		set_linear_velocity(stopMotion)
		state.set_transform(timeBoxOrigin)
		
	
		
			
