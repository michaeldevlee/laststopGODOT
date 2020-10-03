tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

export var next_Scene: PackedScene

func _on_Portal_body_entered(body) -> void:
	if(body.is_in_group("Player")):
		teleport()
	 # Replace with function body.

func _get_configuration_warning()-> String:
	return "The next scene property can't be empty" if not next_Scene else ""

func teleport() -> void:
	
	anim_player.play("FADE IN")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_Scene)




