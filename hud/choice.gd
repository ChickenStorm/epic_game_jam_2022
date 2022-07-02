tool
class_name Choice
extends PanelContainer

export(String) var text = "" setget set_text
export(bool) var choosed = false setget set_choosed

onready var label = $HBoxContainer/Label
onready var label2 = $HBoxContainer/Label2

func _ready():
	label = $HBoxContainer/Label
	update_text()
	update_choosed()


func update_text():
	print(label)
	if label != null:
		label.text = text


func update_choosed():
	print(label)
	if label2 != null:
		label2.visible = choosed


func set_text(string):
	text = string
	update_text()


func set_choosed(bo):
	choosed = bo
	update_choosed()
