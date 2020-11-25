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

var eggman = preload("res://Assets/pixel_mens/sprite_sheets/eggman_anim-Sheet.png")
var pickle_rick = preload("res://Assets/pixel_mens/secret/pickle_rick.png")
var bowser = preload("res://Assets/pixel_mens/sprite_sheets/bowser-Sheet.png")
var sonic = preload("res://Assets/pixel_mens/sprite_sheets/sonic-Sheet.png")
var donkey_kong = preload("res://Assets/pixel_mens/sprite_sheets/donkey_kong-Sheet.png")
var cooper_trooper = preload("res://Assets/pixel_mens/sprite_sheets/cooper_trooper-Sheet.png")
var adventure_finn = preload("res://Assets/pixel_mens/sprite_sheets/finn-Sheet.png")
var homer = preload("res://Assets/pixel_mens/sprite_sheets/homer-Sheet.png")
var knuckles = preload("res://Assets/pixel_mens/sprite_sheets/knuckles-Sheet.png")
var krusty = preload("res://Assets/pixel_mens/sprite_sheets/krusty-Sheet.png")
var link = preload("res://Assets/pixel_mens/sprite_sheets/zelda-Sheet.png")
var zelda = preload("res://Assets/pixel_mens/sprite_sheets/zelda_women-Sheet.png")
var waluigi = preload("res://Assets/pixel_mens/sprite_sheets/walugi-Sheet.png")
var wario = preload("res://Assets/pixel_mens/sprite_sheets/wario-Sheet.png")
var tails = preload("res://Assets/pixel_mens/sprite_sheets/tails-Sheet.png")
var princess_bubblegum = preload("res://Assets/pixel_mens/sprite_sheets/princess_bubblegum-Sheet.png")
var mario = preload("res://Assets/pixel_mens/sprite_sheets/mario-Sheet.png")
var luigi = preload("res://Assets/pixel_mens/sprite_sheets/luigi-Sheet.png")

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
	"zelda": zelda,
	"waluigi": waluigi,
	"wario": wario,
	"tails": tails,
	"princess_bubblegum": princess_bubblegum,
	"mario": mario,
	"luigi": luigi,
}

var save_num = 0
var change_pos_list = ["zelda","donkey_kong","princess_bubblegum"]

#------functions--------

func set_vars():
	players = [player1,player2,player3,player4,player5,player6]
	players_rev = [player6,player5,player4,player3,player2,player1]

func change_pos(name):
	if name in change_pos_list:
		return true
	else:
		return false

func perhaps_save():
	save_num += 1
	if save_num % 7 == 0:
		save()
		#print("saved")

func _process(delta):
	set_vars()
	perhaps_save()
	if Input.is_action_just_pressed("fullscreen") and not OS.window_fullscreen:
		OS.window_fullscreen = true
	elif Input.is_action_just_pressed("fullscreen") and OS.window_fullscreen:
		OS.window_fullscreen = false

#-------save_and_load stuff--------

const FILE_NAME = "user://game-data.txt"

#onready var data = {
#	"unlocked_chars": Unlockables.isUnlocked,
#}

func save():
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(Unlockables.isUnlocked))
	file.close()

func load():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			Unlockables.isUnlocked = data
		else:
			printerr("Corrupted data!")
	else:
		printerr("No saved data!")
