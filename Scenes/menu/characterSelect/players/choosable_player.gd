extends Control

export var sprite = ""


func _ready():
	if sprite == "eggman":
		$Sprite.texture = Globals.eggman
	elif sprite == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif sprite == "bowser":
		$Sprite.texture = Globals.bowser
	elif sprite == "sonic":
		$Sprite.texture = Globals.sonic
	elif sprite == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif sprite == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif sprite == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif sprite == "homer":
		$Sprite.texture = Globals.homer
	elif sprite == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif sprite == "krusty":
		$Sprite.texture = Globals.krusty
	elif sprite == "link":
		$Sprite.texture = Globals.link
	else:
		queue_free()



func _on_Button_pressed():
	if Globals.player1 == "":
		Globals.player1 = sprite
	elif Globals.player2 == "":
		Globals.player2 = sprite
	elif Globals.player3 == "":
		Globals.player3 = sprite
	elif Globals.player4 == "":
		Globals.player4 = sprite
	elif Globals.player5 == "":
		Globals.player5 = sprite
	elif Globals.player6 == "":
		Globals.player6 = sprite
	
