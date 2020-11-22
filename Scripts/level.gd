extends StaticBody2D
class_name level

var player1 = preload("res://Scenes/player/player.tscn")
var player2 = preload("res://Scenes/player/player2.tscn")
var player3 = preload("res://Scenes/player/player3.tscn")
var player4 = preload("res://Scenes/player/player4.tscn")
var player5 = preload("res://Scenes/player/player5.tscn")
var player6 = preload("res://Scenes/player/player6.tscn")

var rng = RandomNumberGenerator.new()
onready var positions = [$spawn_points/pos1.position,$spawn_points/pos2.position,$spawn_points/pos3.position,$spawn_points/pos4.position,$spawn_points/pos5.position,$spawn_points/pos6.position]
var used_positions = [Vector2(0,0)]

func choose_pos():
	var pos = Vector2(0,0)
	while pos in used_positions:
		rng.randomize()
		var ran_num = rng.randi()%6
		pos = positions[ran_num]
	return pos

func spawn_players():
	if Globals.player1 != "":
		var pla1 = player1.instance()
		pla1.skin = Globals.conv.get(Globals.player1)
		pla1.alpha = true # -----get rid of this line ------------
		pla1.position = choose_pos()
		used_positions.append(pla1.position)
		add_child(pla1)
	if Globals.player2 != "":
		var pla2 = player2.instance()
		pla2.skin = Globals.conv.get(Globals.player2)
		pla2.alpha = true # -----get rid of this line ------------
		pla2.position = choose_pos()
		used_positions.append(pla2.position)
		add_child(pla2)
	if Globals.player3 != "":
		var pla3 = player3.instance()
		pla3.skin = Globals.conv.get(Globals.player3)
		pla3.alpha = true # -----get rid of this line ------------
		pla3.position = choose_pos()
		used_positions.append(pla3.position)
		add_child(pla3)
	if Globals.player4 != "":
		var pla4 = player4.instance()
		pla4.skin = Globals.conv.get(Globals.player4)
		pla4.alpha = true # -----get rid of this line ------------
		pla4.position = choose_pos()
		used_positions.append(pla4.position)
		add_child(pla4)
	if Globals.player5 != "":
		var pla5 = player5.instance()
		pla5.skin = Globals.conv.get(Globals.player5)
		pla5.alpha = true # -----get rid of this line ------------
		pla5.position = choose_pos()
		used_positions.append(pla5.position)
		add_child(pla5)
	if Globals.player6 != "":
		var pla6 = player6.instance()
		pla6.skin = Globals.conv.get(Globals.player6)
		pla6.alpha = true # -----get rid of this line ------------
		pla6.position = choose_pos()
		used_positions.append(pla6.position)
		add_child(pla6)

func _ready():
	spawn_players()
