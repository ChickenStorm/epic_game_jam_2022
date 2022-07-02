tool
extends Spatial

export(String) var key_name = ""


onready var area = $Area
onready var collision = $StaticBody/CollisionShape

func _ready():
	area.connect("area_entered", self, "_on_area_entered")
	area.connect("area_exited", self, "_on_area_exited")


func _on_area_entered(ellement):
	var parent = ellement.get_parent()
	if parent.inventory.get(key_name):
		collision.disabled = true


func _on_area_exited(ellement):
	pass
