extends Control


func _on_SMASH_pressed():
	print("SMASH")
	get_tree().change_scene("res://Scenes/test_scenes/test_level.tscn")

func _on_gamesmore_pressed():
	print("games and more")

func _on_vault_pressed():
	print("vault")

func _on_Online_pressed():
	print("online")

func _on_quit_pressed():
	get_tree().quit()
