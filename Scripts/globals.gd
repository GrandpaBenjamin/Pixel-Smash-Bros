extends Node

#------variables--------

var player1 = ""
var player2 = ""
var player3 = ""
var player4 = ""
var player5 = ""
var player6 = ""

var players = [player1,player2,player3,player4,player5,player6]
var players_rev = [player6,player5,player4,player3,player2,player1]


#------player_png_locations--------

var eggman = preload("res://Assets/pixel_mens/eggman.png")
var pickle_rick = preload("res://Assets/pixel_mens/secret/pickle_rick.png")
var bowser = preload("res://Assets/pixel_mens/bowser.png")
var sonic = preload("res://Assets/pixel_mens/sonic.png")
var donkey_kong = preload("res://Assets/pixel_mens/donkey_kong.png")
var cooper_trooper = preload("res://Assets/pixel_mens/cooper_trooper.png")
var adventure_finn = preload("res://Assets/pixel_mens/finn.png")
var homer = preload("res://Assets/pixel_mens/homer.png")
var knuckles = preload("res://Assets/pixel_mens/knuckles.png")
var krusty = preload("res://Assets/pixel_mens/krusty.png")
var link = preload("res://Assets/pixel_mens/zelda.png")

var conv = {
	"eggman": eggman,
	"pickle_rick": pickle_rick,
	"bowser": bowser,
	"sonic": sonic,
	"donkey_kong": donkey_kong,
	"cooper_trooper": cooper_trooper,
	"adventure_finn": adventure_finn,
	"homer": homer,
	"kunckles": knuckles,
	"krusty": krusty,
	"link": link,
}



#------functions--------

func set_vars():
	players = [player1,player2,player3,player4,player5,player6]
	players_rev = [player6,player5,player4,player3,player2,player1]

func _process(delta):
	set_vars()
	if Input.is_action_just_pressed("fullscreen") and not OS.window_fullscreen:
		OS.window_fullscreen = true
	elif Input.is_action_just_pressed("fullscreen") and OS.window_fullscreen:
		OS.window_fullscreen = false
