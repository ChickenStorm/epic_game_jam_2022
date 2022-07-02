Monde BLANC, temporalité indéterminée ; tu te retrouves [espace à définir], un peu amnésique, tu sais juste que tu es là (...ou pas)
-> Interaction1

=== Interaction1 ===
Impossible de passer nulle part, un précipice bloque le passage à l'est, tu attends sous l'arbre qui le surplombe.
+ [changer de Monde] -> Arbre

=== Arbre ===
Le monde devient soudain NOIR, l'arbre, maintenant mort est tombé, créant de manière très opportune un pont de fortune au-dessus de l'abîme.
+[traverser le pont] -> PNJ1

=== PNJ1 ===
Tu traverses le pont et te retrouves face à PNJ1 qui glandouille devant sa maison comme un grand dadais.
+[lui parler] ->parlerPNJ1

// Début des dialogues

=== parlerPNJ1 ===
"Peut-être que j'aurais jamais dû essayer d'ouvrir cette boîte"
+ "Quelle boîte ?"
    -> reponseBoite
+ "Qu'est-ce qui vous est arrivé ?"
    -> reponseArrive
+ "Essayer ? ça n'a pas marché ?"
    -> reponseEchec

=== reponseBoite ===
"T'es pas d'ici, toi hein ?"
+ "Je sais pas, c'est où ici ?"
    -> jeSaisPas
+ "Je crois pas"
    -> reviendras

===jeSaisPas ===
"C'est le BlancNoir"
->PNJ2

===reviendras ===
"Tu reviendras quand tu sauras"
    ->PNJ2

=== reponseArrive ===
"On fait tous nos choix, aucun moyen de savoir lesquels sont les bons"
    -> PNJ2
=== reponseEchec ===
" Si on te demande, tu diras que t'en sais rien"
    -> PNJ2

-> PNJ2

=== PNJ2 ===
Tu arrives devant PNJ2 qui est [ben là, ça dépend du PNJ en question, à choisir]
+[lui parler] ->parlerPNJ2

=== parlerPNJ2 ===
"Dis-voir toi qui as l'air malin, j'ai une énigme pour toi : Tu sais quel est le point commun entre un jongleur et un facteur ?"
+ "Non ?"
    -> reponseCarambar1
+ "ils riment ?"
    -> reponseCarambar2

===reponseCarambar1 ===
"Ils ont tous les deux besoin d'adresse, réfléchis-y, mon gars !"
-> PNJ3

===reponseCarambar2 ===
"C'est toi qui rimes !"
-> PNJ3

=== PNJ3 ===

-> ending

=== ending
Quand tu ouvres la boîte, tu entends : "... ou pas"
    -> END
