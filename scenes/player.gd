extends Sprite2D

var selected


func _process(delta):
	if selected:
		#global_position = get_global_mouse_position()
		global_position = lerp(global_position, get_global_mouse_position(), clampf(25 * delta, 0, 1))


func set_name_label(name):
	$Label.text = name


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		selected = event.is_pressed()
		print(selected)
