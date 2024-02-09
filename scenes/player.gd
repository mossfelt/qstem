extends Sprite2D

var selected


func _process(delta):
	if selected:
		#global_position = get_global_mouse_position()
		global_position = lerp(global_position, get_global_mouse_position(), clampf(25 * delta, 0, 1))


func set_name_label(name):
	$Label.text = name


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and _on_top():
		selected = event.is_pressed()
		
func _on_top():
	for dragable in get_tree().get_nodes_in_group("player_hovered_over"):
		if (dragable.get_index() > get_index()):
			return false
	return true
	
func _on_area_2d_mouse_entered():
	add_to_group("player_hovered_over")


func _on_area_2d_mouse_exited():
	remove_from_group("player_hovered_over")
