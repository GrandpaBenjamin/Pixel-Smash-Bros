extends PanelContainer


func _process(delta):
	$Sprite.texture = Globals.conv.get(Globals.player3)
	$Sprite.hframes = 16
	if Globals.change_pos(Globals.player3):
		$Sprite.position.y = 42
		$Sprite.position.x = 36
	else:
		$Sprite.position.y = 46
		$Sprite.position.x = 32
