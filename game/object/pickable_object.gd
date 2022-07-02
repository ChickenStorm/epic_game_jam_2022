tool
class_name PickableObject
extends Spatial

signal pickup()

export(String) var object_name = "" 

onready var area = $Area
onready var area2 = $Area2
onready var collision = $StaticBody/CollisionShape

var pickup_possible = false
var _target = null

func _ready():
	area.connect("area_entered", self, "_on_area_entered")
	area.connect("area_exited", self, "_on_area_exited")


func _on_area_entered(ellement):
	pickup_possible = true
	_target = ellement.get_parent()


func _on_area_exited(ellement):
	pickup_possible = false


func _unhandled_input(event):
	if event.is_action_pressed("action_pickup") && pickup_possible:
		_target.pickup(object_name)
		area2.emit_signal("area_exited", area)
		area2.monitorable = false
		self.visible = false
		collision.disabled = true
		emit_signal("pickup")
