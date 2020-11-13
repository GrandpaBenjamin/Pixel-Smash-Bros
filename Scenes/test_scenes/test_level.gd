extends StaticBody2D

var bullet = preload("res://Scenes/bullets/bullet.tscn")
var pickle_bullet = preload("res://Scenes/bullets/pickle_bullet.tscn")

func _on_player_shoot():
	var new_bullet = bullet.instance()
	$bullets.add_child(new_bullet)
	if $player/Sprite.flip_h == true:
		new_bullet.position.x = $player.position.x - 15
		new_bullet.position.y = $player.position.y
		new_bullet.direction = "left"
	else:
		new_bullet.position.x = $player.position.x + 15
		new_bullet.position.y = $player.position.y
		new_bullet.direction = "right"


func _on_pickle_rick_shoot():
	var new_bullet = pickle_bullet.instance()
	$bullets.add_child(new_bullet)
	if $pickle_rick/Sprite.flip_h == true:
		new_bullet.position.x = $pickle_rick.position.x - 15
		new_bullet.position.y = $pickle_rick.position.y
		new_bullet.direction = "left"
	else:
		new_bullet.position.x = $pickle_rick.position.x + 15
		new_bullet.position.y = $pickle_rick.position.y
		new_bullet.direction = "right"
