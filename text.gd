extends Node2D
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_names_field_text_changed():
	var names = $names_field.get_text();
	ImportantVariables.name_array = names.split(",");
	for name in ImportantVariables.name_array:
		name = name.strip_edges();
	$names_display.set_text("\n".join(ImportantVariables.name_array));
	pass


func _on_submit_button_pressed():
	if (ImportantVariables.name_array.is_empty()):
		print("you can't do that it's empty!");
	else:
		get_tree().change_scene_to_file("res://node_3d.tscn");
	pass # Replace with function body.
