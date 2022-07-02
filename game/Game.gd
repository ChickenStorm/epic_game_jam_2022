extends Node


onready var player = $Player

#func _ready():
#
#	print(ink_player.get_current_tags())
#	ink_player.connect("loaded", self, "_story_loaded")
#
#func story_loaded(successfully):



func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_fullscreen"):
		OS.window_fullscreen = not OS.window_fullscreen
		get_tree().set_input_as_handled()
