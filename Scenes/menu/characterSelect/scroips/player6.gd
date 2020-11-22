extends PanelContainer


func _process(delta):
	$Sprite.texture = Globals.conv.get(Globals.player6)
