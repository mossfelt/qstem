extends Node2D
var sprites = [];
var area;
var selected = false;
func _ready():
	sprites = [
		preload("res://goty.png"),
		preload("res://raccoon.png"),
		preload("res://bird.png"),
		preload("res://hippo.png"),
		preload("res://bernie.png")
	]
	for player in ImportantVariables.name_array:
		global_position = get_viewport_rect().size / 2
		var label = Label.new()
		label.text = player
		label.add_theme_font_size_override(player,48)
		var area = Area2D.new();
		area.name = "player_" + player
		area.input_pickable = true;
		area.input_event.connect(on_area_input_event)
		var sprite = Sprite2D.new();
		var circle = CircleShape2D.new();
		circle.radius = 50;
		var collision = CollisionShape2D.new()
		collision.shape = circle
		var sprite_texture_random = sprites[randi_range(0,sprites.size() - 1)];
		sprites.erase(sprite_texture_random);
		sprite.texture = sprite_texture_random;
		var screen = get_viewport().get_visible_rect().size
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var randomposition = Vector2(rng.randi_range(100,screen.x - 300), rng.randi_range(100,screen.y - 300))
		area.position = randomposition
		add_child(area);
		area.add_child(label)
		label.position.y = -100;
		area.add_child(sprite);
		area.add_child(collision);

	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
	pass
# Called when the node enters the scene tree for the first time.
func on_area_input_event(viewport,event,shape_idx):
	if Input.is_action_just_pressed("click"):
		print("something")
		selected = true
	
