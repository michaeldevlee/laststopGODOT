extends Button

#onready var anim_player: AnimationPlayer = get_node("AnimationPlay")

export var next_Scene: PackedScene

func teleport() -> void:
	
	#anim_player.play("FADE IN")
	#yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_Scene)
	MusicPlayerTitle.stop()
	MusicPlayerLevels.play()
	print(MusicPlayerLevels.set_autoplay(true))
	
	
func _on_Button_pressed():
	teleport()
	print("pressed")
	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass






