extends Pnj

const TEXT_DAY = preload("res://assets/Sprite_Persos/owl_day.png")
const TEXT_NIGHT = preload("res://assets/Sprite_Persos/owl.png")


func world_change(is_up_p):
	if is_up_p:
		$Mannequiny/charact_model.texture_front = TEXT_DAY
	else:
		$Mannequiny/charact_model.texture_front = TEXT_NIGHT
