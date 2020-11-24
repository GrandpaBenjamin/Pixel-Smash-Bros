extends Control

export var sprite = ""


func _ready():
	if sprite == "eggman" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.eggman
	elif sprite == "pickle_rick" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.pickle_rick
	elif sprite == "bowser" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.bowser
	elif sprite == "sonic" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.sonic
	elif sprite == "donkey_kong" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.donkey_kong
		$Sprite.position.y -= 1
	elif sprite == "cooper_trooper" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.cooper_trooper
	elif sprite == "adventure_finn" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.adventure_finn
	elif sprite == "homer" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.homer
	elif sprite == "knuckles" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.knuckles
	elif sprite == "krusty" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.krusty
	elif sprite == "link" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.link
	elif sprite == "zelda"and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.zelda
		$Sprite.position.y -= 1
	elif sprite == "waluigi" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.waluigi
	elif sprite == "wario" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.wario
	else:
		queue_free()
	$Sprite.hframes = 16



func _on_Button_pressed():
	if Globals.player1 == "":
		Globals.player1 = sprite
	elif Globals.player2 == "":
		Globals.player2 = sprite
	elif Globals.player3 == "":
		Globals.player3 = sprite
	elif Globals.player4 == "":
		Globals.player4 = sprite
	elif Globals.player5 == "":
		Globals.player5 = sprite
	elif Globals.player6 == "":
		Globals.player6 = sprite
	
