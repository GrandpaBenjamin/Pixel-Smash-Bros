extends PanelContainer


func _process(delta):
	if Globals.player3 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player3 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player3 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player3 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player3 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player3 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player3 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player3 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player3 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player3 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player3 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
