extends Area2D

# class member variables go here, for example:
# var a = 2
var isInFire = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if isInFire:
		$"unityTint".modulate.a += 0.05
		if $"unityTint".modulate.a > 1:
			$"unityTint".modulate.a = 1
			$"creepFaces".set_frame(1)

func _on_Marshmallow_area_exited( area ):
	self.isInFire = false
