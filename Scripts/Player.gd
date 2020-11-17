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


func get_input():
	var dir = 0
	if Input.is_action_pressed(right_key):
		dir += 1
		$Sprite.flip_h = false
		$weapon/USSR.flip_h = false
		$weapon.position.x = 0
		
	if Input.is_action_pressed(left_key):
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

signal shoot(owner_name,owner_team)

func attack():
	if Input.is_action_just_pressed(attack_key):
		emit_signal("shoot",owner_name,owner_team)

func get_hurt():
	health -= 1
	die()

func die():
	if health == 0:
		can_move = false
		can_attack = false
		if $weapon/USSR.flip_h == false:
				$anims.play("idle")
		elif $weapon/USSR.flip_h == true:
			$anims.play("idle_left")
		queue_free()

func _physics_process(delta):
	if can_move:
		get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if can_move:
		jump()
	if can_attack:
		attack()
