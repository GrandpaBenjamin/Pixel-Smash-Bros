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
