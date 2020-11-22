extends KinematicBody2D
class_name Player

export (int) var speed = 200
export (int) var jump_speed = -250
export (int) var gravity = 750
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var health = 2
var velocity = Vector2.ZERO
var can_move = true
var can_attack = true
var can_double_jump = false

var owner_name = "none"
var owner_team = "none"

var attack_key = ""
var jump_key = ""
var left_key = ""
var right_key = ""

var skin = preload("res://Assets/blank.png")
var alpha = false


func get_input():
	var dir = 0
	if Input.is_action_pressed(right_key):
		dir += 1
		$Sprite.flip_h = false
		
	if Input.is_action_pressed(left_key):
		dir -= 1
		$Sprite.flip_h = true
	if dir != 0:
		if not alpha:
			$anims.play("walk")
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		if not alpha:
			if is_on_floor():
				$anims.play("idle")
			else:
				$anims.play("still")
		velocity.x = lerp(velocity.x, 0, friction)

func jump():
	if Input.get_action_strength(jump_key) and not can_double_jump:
		if is_on_floor():
			velocity.y = jump_speed
		elif not is_on_floor():
			can_double_jump = false
	if Input.is_action_just_pressed(jump_key) and can_double_jump:
		velocity.y += jump_speed + 10
		can_double_jump = false
	if is_on_floor():
		can_double_jump = true

#signal shoot(owner_name,owner_team)

#func attack():
#	if Input.is_action_just_pressed(attack_key):
#		emit_signal("shoot",owner_name,owner_team)

func get_hurt():
	health -= 1
	die()

func die():
	if health == 0:
		can_move = false
		can_attack = false
		queue_free()

func skin():
	$Sprite.texture = skin
	if alpha == true:
		$Sprite.hframes = 1
		$Sprite.vframes = 1

func _physics_process(delta):
	skin()
	if can_move:
		get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if can_move:
		jump()
#	if can_attack:
#		attack()
