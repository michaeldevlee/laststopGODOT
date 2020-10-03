extends KinematicBody2D

export (float) var movementSpeed

var velocity = Vector2()

export (float) var gravity

export (float) var jumpForce

var stillInAir

export (int) var push = 3000

var state_machine

onready var scalePlayer = get_node("Sprite")

onready var getMovementUI = get_node("MovementUI")
		

	
# Called when the node enters the scene tree for the first time.
func _ready():
	state_machine = get_node("AnimationTree").get("parameters/playback")
	state_machine.start("IDLE")
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	
	var currentState = state_machine.get_current_node() #what state is running

	if Input.is_action_pressed("ui_left"):
		velocity.x = - movementSpeed
		state_machine.travel("WALK")
		
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  movementSpeed
		state_machine.travel("WALK")
	else:
		velocity.x = 0
		state_machine.travel("IDLE")

	if Input.is_action_just_released("ui_left"):
		velocity.x = 0
	elif Input.is_action_just_released("ui_right"):
		velocity.x = 0
	
	if (velocity.x > 0 ):
		scalePlayer.scale.x = 0.3
		
	if (velocity.x < 0 ):
		scalePlayer.scale.x = -0.3
		

	
	
	
	if Input.is_action_pressed("Jump") && is_on_floor():
			velocity.y += -jumpForce
			
		
	
	if(velocity.y < 0):
		state_machine.travel("Jump")
	
		
	if Input.is_action_just_released("Jump") && velocity.y <0.2:
			
		
			velocity.y = jumpForce*0.2
	
	
	
		

func _physics_process(delta):
	
	if(velocity.y < 0):
		state_machine.travel("Jump")
		print(velocity.y)
	elif(velocity.y > 0 && is_on_floor() == false):
		state_machine.travel("FALL")
		

	# after calling move_and_slide()
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider.is_in_group("bodies"):
				collision.collider.apply_central_impulse(-collision.normal * push)
	
	velocity = move_and_slide(velocity,Vector2(0,-1),false,4,0.785398,false)
	velocity.y += gravity*delta
	
	
	
	
