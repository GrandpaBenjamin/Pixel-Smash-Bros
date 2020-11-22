extends PanelContainer


func _process(delta):
	if Globals.player6 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player6 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player6 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player6 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player6 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player6 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player6 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player6 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player6 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player6 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player6 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
