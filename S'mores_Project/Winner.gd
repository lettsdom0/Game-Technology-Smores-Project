extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _process(delta):
	self.position = $"../Player".global_position
	# Initialization here
	pass
