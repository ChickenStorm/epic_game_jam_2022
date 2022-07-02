extends Control

const CHOICE_CLASS = preload("res://hud/choice.tscn")

onready var label = $PanelContainer/MainText/HBoxContainer/Label
onready var choice = $PanelContainer/MainText/Choice

var show_dialog = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("action_dialog") && show_dialog:
		next_dialog()
		get_tree().set_input_as_handled()


func show_dialog(string, choice_text, pnj):
	self.visible = true
	show_dialog = true
	label.text = string
	var first = true
	for text in choice_text:
		var node = CHOICE_CLASS.instance()
		choice.add_child(node)
		node.text = text
		if first == true:
			first = false
			node.choosed = true
	

func next_dialog():
	self.visible = false
	show_dialog = false
	for node in choice.get_children():
		node.queue_free()
