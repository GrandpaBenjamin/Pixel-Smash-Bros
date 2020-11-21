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
