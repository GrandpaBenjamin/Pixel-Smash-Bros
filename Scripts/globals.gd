extends Node

#------variables--------

var player1 = ""
var player2 = ""
var player3 = ""
var player4 = ""

var players = [player1,player2,player3,player4]


#------player_png_locations--------

var eggman = preload("res://Assets/pixel_mens/eggman.png")
var pickle_rick = preload("res://Assets/pixel_mens/secret/pickle_rick.png")
var bowser = preload("res://Assets/pixel_mens/bowser.png")
var sonic = preload("res://Assets/pixel_mens/sonic.png")


#------functions--------

func set_vars():
	players = [player1,player2,player3,player4]

func _process(delta):
	set_vars()
	if Input.is_action_just_pressed("fullscreen") and not OS.window_fullscreen:
		OS.window_fullscreen = true
	elif Input.is_action_just_pressed("fullscreen") and OS.window_fullscreen:
		OS.window_fullscreen = false
