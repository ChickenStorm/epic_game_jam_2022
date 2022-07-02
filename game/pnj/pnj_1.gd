extends Pnj

func _ready():
	._ready()
	self.text = {
			"dialogue" : "Peut-être que j'aurais jamais dû essayer d'ouvrir la Boîte",
			"choice" : [
				{
					"q": "Quelle boîte ?",
					"dialogue": "T'es pas d'ici, toi, hein ?",
					"choice": [
						{
							"q" : "Je sais pas, c'est où ici ?",
							"dialogue" : "C'est le Blanc/Noir."
						},
						{
							"q": "Je crois pas",
							"dialogue": "Ouais, ben tu reviendras quand tu sauras… ou pas."
						}
					]
				},
				{
					"q":"Qu'est-ce qui vous est arrivé ?",
					"dialogue" : "On fait tous nos choix, aucun moyen de savoir s'ils sont bons."
				},
				{
					"q":"Essayer ? Ça n'a pas marché ?",
					"dialogue": "Si on te demande, tiu diras que t'en sais rien."
					},
			]
	}
	

