extends PanelContainer


func _process(delta):
	if Globals.player5 == "eggman":
		$Sprite.texture = Globals.eggman
	elif Globals.player5 == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif Globals.player5 == "bowser":
		$Sprite.texture = Globals.bowser
	elif Globals.player5 == "sonic":
		$Sprite.texture = Globals.sonic
	elif Globals.player5 == "donkey_kong":
		$Sprite.texture = Globals.donkey_kong
	elif Globals.player5 == "cooper_trooper":
		$Sprite.texture = Globals.cooper_trooper
	elif Globals.player5 == "adventure_finn":
		$Sprite.texture = Globals.adventure_finn
	elif Globals.player5 == "homer":
		$Sprite.texture = Globals.homer
	elif Globals.player5 == "knuckles":
		$Sprite.texture = Globals.knuckles
	elif Globals.player5 == "krusty":
		$Sprite.texture = Globals.krusty
	elif Globals.player5 == "link":
		$Sprite.texture = Globals.link
	else:
		$Sprite.texture = preload("res://Assets/blank.png")
