extends PanelContainer



func _process(delta):
	$Sprite.texture = Globals.conv.get(Globals.player6)
	$Sprite.hframes = 16
	if Globals.change_pos(Globals.player6):
		$Sprite.position.y = 45
		$Sprite.position.x = 33
	else:
		$Sprite.position.y = 46
		$Sprite.position.x = 32
