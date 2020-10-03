extends TouchScreenButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_RightButton_pressed():
	Input.action_press("ui_right")
	print("right button pressed")
	pass # Replace with function body.

func _on_RightButton_released():
	Input.action_release("ui_right")
	print("right button pressed")
	pass # Replace with function body.

func _on_LeftButton_pressed():
	Input.action_press("ui_left")
	print("left button pressed")
	#pass # Replace with function body.

func _on_LeftButton_released():
	Input.action_release("ui_left")
	print("left button pressed")
	pass # Replace with function body.

func _on_JumpButton_pressed():
	Input.action_press("Jump")
	print("jump button pressed")
	#pass # Replace with function body.

func _on_JumpButton_released():
	Input.action_release("Jump")
	pass # Replace with function body.

func _on_ResetButton_pressed():
	Input.action_press("Reset")
	print("reset button pressed")
	#pass # Replace with function body.

func _on_ResetButton_released():
	Input.action_release("Reset")
	print("reset button pressed")
	pass # Replace with function body.










