extends AudioStreamPlayer

func world_change(is_up):
	if is_up:
		volume_db = 0
	else:
		volume_db = -10
