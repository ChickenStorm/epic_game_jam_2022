tool
class_name Player
extends KinematicBody
# Helper class for the Player scene's scripts to be able to have access to the
# camera and its orientation.

export(bool) var up_world = true setget set_up_world

onready var camera: Spatial = $HRot
onready var skin: Mannequiny = $Mannequiny
onready var state_machine: StateMachine = $StateMachine

var inventory


func _get_configuration_warning() -> String:
	return "Missing camera node" if not camera else ""


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_pressed("action_change_world"):
		self.up_world = !self.up_world


func set_up_world(new_bool):
	up_world = new_bool
	if up_world:
		# this order is wanted as the last step is always to set to visible
		for node in get_tree().get_nodes_in_group("DownWorld"):
			node.visible = false
		for node in get_tree().get_nodes_in_group("UpWorld"):
			node.visible = true 
	else:
		for node in get_tree().get_nodes_in_group("UpWorld"):
			node.visible = false
		for node in get_tree().get_nodes_in_group("DownWorld"):
			node.visible = true 
	 # TODO call a method on each ellement, might be to heavy ?
