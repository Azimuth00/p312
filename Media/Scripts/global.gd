extends Node

var fullsreen = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("f11"):
		if fullsreen == false:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			fullsreen = true
		elif fullsreen == true:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			fullsreen = false
