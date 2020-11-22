extends Node2D


func _ready():
	$anim.play("load")
	Globals.load()
	$sloip.start()

func _on_sloip_timeout():
	get_tree().change_scene("res://Scenes/menu/game_select/game_select.tscn")
