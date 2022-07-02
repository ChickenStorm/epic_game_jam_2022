extends Spatial

export var rotation_speed_factor: = 10.0

var player_direction = Vector3.ZERO
var player = false

func _on_body_entered(body):
	if body.is_in_group("player"):
		player = body
	
	
func _on_body_exited(body):
	if body.is_in_group("player"):
		if player == body:
			player = null
	
	
func _physics_process(delta):
	if player:
		player_direction = global_transform.origin.direction_to(player.focus_point.global_transform.origin)
		player_direction.y = 0
	if player_direction:
		rotation.y = lerp_angle(rotation.y, atan2(player_direction.x, player_direction.z), delta * rotation_speed_factor)
