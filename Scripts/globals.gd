extends Node

func _process(delta):
	if Input.is_action_just_pressed("fullscreen") and not OS.window_fullscreen:
		OS.window_fullscreen = true
	elif Input.is_action_just_pressed("fullscreen") and OS.window_fullscreen:
		OS.window_fullscreen = false
