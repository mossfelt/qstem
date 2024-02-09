extends Node2D

#var sprites = [];
#var area;
#var selected = false;

var player = preload("res://scenes/player.tscn")

func _ready():
	var sprites = [
		preload("res://assets/goty.png"),
		preload("res://assets/raccoon.png"),
		preload("res://assets/bird.png"),
		preload("res://assets/hippo.png"),
		preload("res://assets/bernie.png")
	]
	
	for name in ImportantVariables.name_array:
		var screen = get_viewport().get_visible_rect().size
		var randomposition = Vector2(randi_range(100,screen.x - 300), randi_range(100,screen.y - 300))
		
		var sprite_texture_random = sprites[randi_range(0,sprites.size() - 1)];
		sprites.erase(sprite_texture_random);
		
		var player = player.instantiate()
		player.texture = sprite_texture_random
		player.position = randomposition
		player.set_name_label(name)
		add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#if selected:
		#global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	#pass

