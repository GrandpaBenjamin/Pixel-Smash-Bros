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
	elif sprite == "waluigi" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.waluigi
	elif sprite == "wario" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.wario
	elif sprite == "mario" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.mario
	elif sprite == "luigi" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.luigi
	elif sprite == "tails" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.tails
	elif sprite == "princess_bubblegum" and Unlockables.isUnlocked.get(sprite):
		$Sprite.texture = Globals.princess_bubblegum
	else:
		queue_free()
	$Sprite.hframes = 16
	if Globals.change_pos(sprite):
		$Sprite.position.y -= 1
	else:
		$Sprite.position.y = 2.5



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
	
