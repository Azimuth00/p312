extends Control

var  is_mouse_out = false
@onready var settings_buttons = [$Settings/GameSettingsButton,$Settings/VideoSettingsButton,$Settings/AudioSettingsButton,$Settings/ControlSettingsButton,$Settings/OtherSettingsButton]
@onready var settings_areas = [$Settings/GS_window,$Settings/VS_window,$Settings/AS_window,$Settings/CS_window,$Settings/OS_window]

func IA_off():
	for i in settings_buttons:
		i.get_node("Indicator").visible = false
	for i in settings_areas:
		i.visible = false

func _process(delta: float) -> void:
	var viewport_size = get_viewport_rect().size
	var k = ((viewport_size.x/1152)+(viewport_size.y/648))/2
	var vector2k = Vector2(k,k)
	size = viewport_size
	
	$Background.size = viewport_size
	$Settings.size = Vector2(viewport_size.x - viewport_size.x * 0.02777777777, viewport_size.y - viewport_size.y * 0.04938271604)
	$Header.scale = vector2k /2
	$CenterButtons.scale = vector2k
	$PlayButtons.scale = vector2k
	$Settings/ExitButton.scale = vector2k
	$Settings/GameSettingsButton.scale = vector2k
	$Settings/VideoSettingsButton.scale = vector2k
	$Settings/AudioSettingsButton.scale = vector2k
	$Settings/ControlSettingsButton.scale = vector2k
	$Settings/OtherSettingsButton.scale = vector2k
	$Settings/SettingsButton.scale = vector2k
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

#-----------

func _on_exit_button_pressed() -> void:
	$Settings.visible = false

func _on_game_settings_button_pressed() -> void:
	IA_off()
	$Settings/GameSettingsButton/Indicator.visible = true
	$Settings/GS_window.visible = true


func _on_video_settings_button_pressed() -> void:
	IA_off()
	$Settings/VideoSettingsButton/Indicator.visible = true
	$Settings/VS_window.visible = true


func _on_audio_settings_button_pressed() -> void:
	IA_off()
	$Settings/AudioSettingsButton/Indicator.visible = true
	$Settings/AS_window.visible = true


func _on_control_settings_button_pressed() -> void:
	IA_off()
	$Settings/ControlSettingsButton/Indicator.visible = true
	$Settings/CS_window.visible = true


func _on_other_settings_button_pressed() -> void:
	IA_off()
	$Settings/OtherSettingsButton/Indicator.visible = true
	$Settings/OS_window.visible = true
