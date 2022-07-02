extends Control


func _input(event):
	if event.is_action_pressed("action_change_world"):
		visible = false
