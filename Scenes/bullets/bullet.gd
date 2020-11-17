extends KinematicBody2D

var direction = "none"
var owner_name = "none"
var owner_team = "none"

func _ready():
	$cooldown.start()

func _physics_process(delta):
	if direction == "left":
		position.x -= 10
	elif direction == "right":
		position.x += 10
	else:
		queue_free()

func _on_cooldown_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	if owner_name in body.get_name():
		pass
	elif "level" in body.get_name():
		queue_free()
	else:
		body.get_hurt()
		queue_free()
