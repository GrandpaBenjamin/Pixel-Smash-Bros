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
