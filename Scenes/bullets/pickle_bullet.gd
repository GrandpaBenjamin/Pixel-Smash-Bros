extends KinematicBody2D

var direction = "none"

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
