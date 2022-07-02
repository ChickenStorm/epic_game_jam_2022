extends Pnj

var is_up = true


func _ready():
	._ready()
	world_change(is_up)


func world_change(is_up_p):
	is_up = is_up_p
	if is_up:
		text = {
			"dialogue": "Dis-moi, toi qui as l'air malin, j'ai une énigme pour toi : tu sais quel est le point commun entre un jongleur et un facteur ?",
			"choice" : [
				{
					"q": "non ?",
					"dialogue": "Ils ont tous les deux besoin d'adresse, réfléchis-y, mon gars… Ou pas",
					"choice": [
						{
							"q": "Super interaction.",
							"dialogue": "...",
						}
					],
				},
				{
					"q": "ils riment ?",
					"dialogue": "C'est toi qui rimes… Ou pas !",
					"choice": [
						{
							"q": "Super interaction.",
							"dialogue": "...",
						}
					],
				}
			]
		}
	else:
		text = {
			"dialogue" : "..."
		}



