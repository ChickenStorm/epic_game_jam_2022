tool
class_name Pnj
extends Spatial

export(Dictionary) var text setget set_text 
export(Dictionary) var choice

var current_dialogue_step = null

onready var dialogue_area : Area = $DialogueCollisonArea
onready var watch_player_area : Area = $WatchPlayerZone
onready var mannequiny = $Mannequiny

var can_be_interacted = false


func _ready():
	#$Dialogue/Sprite3D.visible = false
	#can_be_interacted = false
	update_text()
	dialogue_area.connect("area_entered", self, "_on_area_entered")
	dialogue_area.connect("area_exited", self,  "_on_area_exited")
	watch_player_area.connect("body_entered", mannequiny, "_on_body_entered")
	watch_player_area.connect("body_exited", mannequiny,  "_on_body_exited")


func update_text():
	pass
	#$Dialogue/Sprite3D/Viewport/ColorRect/Label.text = text


func set_text(new_text):
	text = new_text
	update_text()


func _on_area_entered(_element):
	can_be_interacted = true
	#$Dialogue/Sprite3D.visible = true


func _on_area_exited(_element):
	can_be_interacted = false
	#Dialogue/Sprite3D.visible = false


func _unhandled_input(event):
	if Input.is_action_pressed("action_interact") && can_be_interacted:
		#$Dialogue/Sprite3D.visible = true
		show_dialogue()


func lock_player_control(Bool : bool = true):
	for body in dialogue_area.get_overlapping_areas():
		var parent = body.get_parent()
		if parent.is_in_group("player") and parent.state_machine:
			parent.state_machine._do_input_delegation = ! Bool


func show_dialogue():
	if current_dialogue_step == null:
		current_dialogue_step = text
	choice = current_dialogue_step.get("choice", [])
	get_tree().call_group("dialoge", "show_dialoge", current_dialogue_step, choice, self)
	lock_player_control()

func call_back(index):
	current_dialogue_step = current_dialogue_step["choice"][index]
	show_dialogue()
