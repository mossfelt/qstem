extends Node2D


func _on_names_field_text_changed():
	var names = $names_field.get_text();
	ImportantVariables.name_array = names.split(",");
	for player_name in ImportantVariables.name_array:
		player_name = player_name.strip_edges();
	$names_display.set_text("\n".join(ImportantVariables.name_array));


func _on_submit_button_pressed():
	if (ImportantVariables.name_array.is_empty()):
		print("you can't do that it's empty!");
	else:
		get_tree().change_scene_to_file("res://scenes/gamescreen.tscn");
		print("why")
