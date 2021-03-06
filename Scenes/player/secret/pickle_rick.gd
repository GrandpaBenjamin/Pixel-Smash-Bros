extends KinematicBody2D

export (int) var speed = 200
export (int) var jump_speed = -250
export (int) var gravity = 750
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var velocity = Vector2.ZERO

func get_input():
	var dir = 0
	if Input.is_action_pressed("right_2"):
		dir += 1
		$Sprite.flip_h = false
		$weapon/USSR.flip_h = false
		$weapon.position.x = 0
		
	if Input.is_action_pressed("left_2"):
		dir -= 1
		$Sprite.flip_h = true
		$weapon/USSR.flip_h = true
		$weapon.position.x = -7
	if dir != 0:
		$anims.play("walk")
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		if is_on_floor():
			if $weapon/USSR.flip_h == false:
				$anims.play("idle")
			elif $weapon/USSR.flip_h == true:
				$anims.play("idle_left")
		else:
			$anims.play("still")
		velocity.x = lerp(velocity.x, 0, friction)

func jump():
	if Input.get_action_strength("jump_2"):
		if is_on_floor():
			velocity.y = jump_speed

signal shoot

func attack():
	if Input.is_action_just_pressed("attack_2"):
		emit_signal("shoot")

func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	jump()
	attack()
