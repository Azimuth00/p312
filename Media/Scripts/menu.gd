extends Control

var  is_mouse_out = false


func _process(delta: float) -> void:
	var viewport_size = get_viewport_rect().size
	var k = ((viewport_size.x/1152)+(viewport_size.y/648))/4
	var vector2k = Vector2(k,k)
	size = viewport_size
	
	$Background.size = viewport_size
	$Settings.size = Vector2(viewport_size.x - viewport_size.x * 0.02777777777, viewport_size.y - viewport_size.y * 0.04938271604)
	$Header.scale = vector2k
	$CenterButtons.scale = vector2k * 2
	$PlayButtons.scale = vector2k * 2
	if Input.is_action_just_pressed("lbc") and is_mouse_out == true and $PlayButtons.visible == true:
		$PlayButtons.visible = false
		$CenterButtons.visible = true
	
	


func _on_play_button_pressed() -> void:
	$CenterButtons.visible = false
	$PlayButtons.visible = true


func _on_settings_button_pressed() -> void:
	$Settings.visible = true


func _on_credits_button_pressed() -> void:
	pass # Replace with function body.


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_out_body_entered(body: Node2D) -> void:
	if body.name == "CustomCursor":
		is_mouse_out = true

func _on_out_body_exited(body: Node2D) -> void:
	if body.name == "CustomCursor":
		is_mouse_out = false


func _on_exit_button_3_pressed() -> void:
	$Settings.visible = false
