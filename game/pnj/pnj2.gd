extends Pnj

var has_talk_day = false
var has_talk_night = false

var is_up = true

func _ready():
	._ready()
	world_change(is_up)

func show_dialogue():
	if is_up:
		has_talk_day = true
	else:
		has_talk_night = true
	.show_dialogue()
	

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
		if has_talk_day:
			text = {
				"dialogue": "Tu sais, mon frère c'est pas vraiment un monstre social, il est plutôt introverti, c'est probablement pour ça qu'il est assez aggressif et laconique.",
				"choice" : [
					{
						"q": "Oui, je t'avoue que je l'ai un peu pris pour moi.",
						"dialogue": "Non, non, il ne faut pas, il est comme ça avec tout le monde… sauf moi bien sûr, on n'a pas beaucoup l'occasion de se parler.",
						"choice" : [
							{
								"q": "Ah bon, pourquoi ?",
								"dialogue" : "Ben, on ne se voit pas beaucoup, mais on se connaît bien : on rêve constamment l'un de l'autre…",
								"choice" : [
									{
										"q": "Tu peux me dire ce que c'est que cette boîte qu'il dit avoir essayé d'ouvrir ?",
										"dialogue": "Oui et non, tu ne peux pas la rater, mais c'est difficile pour moi de t'en dire plus",
									},
									{
										"q": "T'as aucun moyen de le savoir ?",
										"dialogue": "Malheureusement, non."
									}
								]
							},
							
						]
					},
					{
						"q": "C'est pas grave, je comprends, j'ai tendance à être un peu pareil.",
						"dialogue": "C'est pas de bol, plutôt insupportable au quotidien, non ?",
						"choice": [
							{
								"q": "Non, mais pas à ce point pénible non plus",
								"dialogue": "Hé, tu restes courtois, c'est mon frère quand même.",
								"choice": [
									{"q":"Oui, pardon", "dialogue" : "C'est rien."},
									
								]
							},
							{
								"q": "Tu dis ça pour toi ?",
								"dialogue": "Non, plutôt pour toi.",
								"choice" : [
									{
										"q": "Hé, tu restes courtois, s'il te plaît.",
										"dialogue" : "Pardon."
									}
								]
							}
						]
					}
				]
			}
		else:
			text = {
				"dialogue": "Tu sais, mon frère c'est pas vraiment un monstre social, il est plutôt introverti, c'est probablement pour ça qu'il est assez aggressif et laconique.",
				"choice" : [
					{
						"q": "Ah, je n'ai pas encore eu l'honneur d'en profiter, mais c'est bon à savoir.",
						"dialogue": "Oui, tu sais, en plus depuis que la boîte est apparue, tout le monde est un peu à cran par ici",
						"choice" : [
							{
								"q": "Tu veux dire la boîte qui est [emplacement de la boîte] ?", # TODO
								"dialogue": "C'est ça.",
								"choice": [
									{
										"q": "Mais c'est quoi cette boîte ?",
										"dialogue": "ça, je peux rien te dire de plus, c'est à toi de le découvrir… ou pas.",
									},
									{
										"q": "Et comment on y accède ?",
										"dialogue": "Avec une clé, pardi !",
									}
								],
							},
							{
								"q": "Pourquoi ?",
								"dialogue": "Parce que… comment dire… c'est difficile à expliquer, c'est comme si… Enfin, c'est mieux que tu t'en rendes compte par toi-même… ou pas.",
								"choice": [
									{
										"q": "Il faudrait que je puisse y accéder déjà.",
										"dialogue": "Oui, mais pour ça je peux pas t'aider.",
									},
									{
										"q": "Tu es bien mystérieux.",
										"dialogue": "Pas vraiment.",
									}
								],
							}
						]
					}
				]
			}

{
	"q": "",
	"dialogue": "",
	"choice": [
		
	],
}
