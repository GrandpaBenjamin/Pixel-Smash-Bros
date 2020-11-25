extends Control


func _on_SMASH_pressed():
	get_tree().change_scene("res://Scenes/menu/characterSelect/player_select.tscn")

func _on_gamesmore_pressed():
	print("games and more")

func _on_vault_pressed():
	print("vault")

func _on_Online_pressed():
	print("online")

func _on_quit_pressed():
	get_tree().quit()


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/menu/options/options.tscn")
