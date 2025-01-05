extends Control



func _process(delta: float) -> void:
	var viewport_size = get_viewport_rect().size
	var k = ((viewport_size.x/1152)+(viewport_size.y/648))/4
	size = viewport_size
	$Background.size = viewport_size
	$Background2.scale = Vector2(k,k) * 2
	print(k)
	$Header.scale = Vector2(k,k)
	
	var button_array = [$CenterButtons/Button,$CenterButtons/Button2,$CenterButtons/Button3,$CenterButtons/Button4]
	
	for i in button_array:
		#i.scale = Vector2(k,k)*2
		pass
