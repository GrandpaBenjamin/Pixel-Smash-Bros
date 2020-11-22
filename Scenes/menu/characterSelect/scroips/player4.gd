extends PanelContainer


func _process(delta):
	if Globals.player4 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player4 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player4 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player4 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player4 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player4 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player4 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player4 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player4 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player4 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player4 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
