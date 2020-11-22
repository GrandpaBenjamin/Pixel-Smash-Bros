extends PanelContainer


func _process(delta):
	if Globals.player2 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player2 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player2 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player2 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player2 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player2 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player2 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player2 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player2 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player2 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player2 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
