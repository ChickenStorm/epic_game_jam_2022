tool
class_name Pnj
extends Spatial

export(String) var text setget set_text 
export(Array, String) var choice

onready var dialogue_area : Area = $DialogueCollisonArea

var can_be_interacted = false


func _ready():
	#$Dialogue/Sprite3D.visible = false
	#can_be_interacted = false
	update_text()
	dialogue_area.connect("area_entered", self, "_on_area_entered")
	dialogue_area.connect("area_exited", self,  "_on_area_exited")


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
		get_tree().call_group("dialoge", "show_dialoge", text, choice, self)
		lock_player_control()

func lock_player_control(Bool : bool = true):
	for body in dialogue_area.get_overlapping_bodies():
		if body.is_in_group("player") and body.state_machine:
			body.state_machine._do_input_delegation = ! Bool

func call_back(index):
	pass
