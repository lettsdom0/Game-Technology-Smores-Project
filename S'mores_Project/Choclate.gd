extends Area2D

var isInFire = false

	
func _process(delta):
	if isInFire:
		$"unityTint".modulate.a += 0.025
		if $"unityTint".modulate.a > 1:
			$"unityTint".modulate.a = 1
			$"creepFaces".set_frame(1)


func _on_Chocolate_area_exited( area ):
	self.isInFire = false
