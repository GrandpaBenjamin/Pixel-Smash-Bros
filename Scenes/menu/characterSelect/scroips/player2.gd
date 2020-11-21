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
