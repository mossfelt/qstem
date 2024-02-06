extends Node3D
# Called when the node enters the scene tree for the first time.
func _ready():
	print("\n".join(ImportantVariables.name_array));
	pass # Replace with function body.
	for name in ImportantVariables.name_array:
		MeshInstance3D.new()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
