extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass





func _on_ToastCheck_area_entered( area ):
	print(area.is_in_group("creep"))
	if area.is_in_group("creep"):
		if area.get_node("creepFaces").frame == 0:
			print("too slow")
			$"../you_lose".visible = true
			print($"../you_lose".visible)
			$"..".tooSlow -= 1
		else:
			print ("Ooh! Toasty!")
			$"..".Toasty -=1
