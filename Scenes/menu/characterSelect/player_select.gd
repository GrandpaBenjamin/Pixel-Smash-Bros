extends Control

var after = false
var empty = 0

func bonk():
	for player in Globals.players_rev:
		if player != "":
			after = true
		if player == "" and after == true:
			after = false
			return false
	for player in Globals.players:
		if player == "":
			empty += 1
	if empty != len(Globals.players) and empty != len(Globals.players) - 1:
		return true
	else:
		empty = 0
		return false

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/menu/game_select/game_select.tscn")


func _on_play_pressed():
	if bonk():
		get_tree().change_scene("res://Scenes/test_scenes/test_level.tscn")


func _on_player1_button_pressed():
	Globals.player1 = ""

func _on_player1_button2_pressed():
	Globals.player2 = ""

func _on_player3_button_pressed():
	Globals.player3 = ""

func _on_player4_button_pressed():
	Globals.player4 = ""

func _on_player5_button_pressed():
	Globals.player5 = ""

func _on_player6_button_pressed():
	Globals.player6 = ""
