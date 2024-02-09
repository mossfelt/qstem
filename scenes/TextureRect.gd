extends TextureRect


#var flip_timer = 0.0

#func _process(delta):
	#flip_timer += delta
	#if flip_timer >= 1:
		#flip_h = !flip_h
		#flip_timer -= 1
