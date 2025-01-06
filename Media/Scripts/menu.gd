extends Control

#var button_array = [$CenterButtons/Button,$CenterButtons/Button2,$CenterButtons/Button3,$CenterButtons/Button4]

func _process(delta: float) -> void:
	var viewport_size = get_viewport_rect().size
	var k = ((viewport_size.x/1152)+(viewport_size.y/648))/4
	var vector2k = Vector2(k,k)
	size = viewport_size
	$Background.size = viewport_size
	$Header.scale = vector2k
	$CenterButtons.scale = vector2k * 2
	
	
	


func _on_play_button_pressed() -> void:
	pass # Replace with function body.


func _on_settings_button_pressed() -> void:
	pass # Replace with function body.


func _on_credits_button_pressed() -> void:
	pass # Replace with function body.


func _on_quit_button_pressed() -> void:
	get_tree().quit()
