extends PanelContainer


func _process(delta):
	if Globals.player1 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player1 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player1 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player1 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player1 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player1 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player1 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player1 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player1 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player1 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player1 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
