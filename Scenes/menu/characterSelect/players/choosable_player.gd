extends Control

export var sprite = ""


func _ready():
	if sprite == "eggman":
		$Sprite.texture = Globals.eggman
	elif sprite == "pickle_rick":
		$Sprite.texture = Globals.pickle_rick
	elif sprite == "bowser":
		$Sprite.texture = Globals.bowser
	elif sprite == "sonic":
		$Sprite.texture = Globals.sonic
	else:
		queue_free()



func _on_Button_pressed():
	if Globals.player1 == "":
		Globals.player1 = sprite
	elif Globals.player2 == "":
		Globals.player2 = sprite
	elif Globals.player3 == "":
		Globals.player3 = sprite
	elif Globals.player4 == "":
		Globals.player4 = sprite
	else:
		print(":(")
	
