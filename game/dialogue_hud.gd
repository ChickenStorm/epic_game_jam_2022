extends Control

const CHOICE_CLASS = preload("res://hud/choice.tscn")

onready var label = $PanelContainer/MainText/HBoxContainer/Label
onready var choice = $PanelContainer/MainText/Choice

var show_dialoge = false
var choice_index = 0
var _target_pnj = null

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("action_dialoge") && show_dialoge:
		next_dialoge()
		get_tree().set_input_as_handled()


func _unhandled_input(event):
	var count = choice.get_child_count()
	if count > 0:
		if event.is_action_pressed("ui_right"):
			choice.get_child(choice_index).choosed = false
			choice_index = (choice_index + 1) % count
			choice.get_child(choice_index).choosed = true
		if event.is_action_pressed("ui_left"):
			choice.get_child(choice_index).choosed = false
			choice_index = (choice_index - 1 + count) % count
			choice.get_child(choice_index).choosed = true


func show_dialoge(string, choice_text, pnj):
	choice_index = 0
	_target_pnj = pnj
	self.visible = true
	show_dialoge = true
	label.text = string
	var first = true
	for text in choice_text:
		var node = CHOICE_CLASS.instance()
		choice.add_child(node)
		node.text = text
		if first == true:
			first = false
			node.choosed = true
	

func next_dialoge():
	self.visible = false
	show_dialoge = false
	for node in choice.get_children():
		node.queue_free()
	_target_pnj.call_back(choice_index)
