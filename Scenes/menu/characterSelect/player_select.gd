extends Control


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/menu/game_select/game_select.tscn")


func _on_play_pressed():
	get_tree().change_scene("res://Scenes/test_scenes/test_level.tscn")
