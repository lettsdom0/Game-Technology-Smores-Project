extends Area2D

var velocity 

var speedMultiplier = 8

func _process(delta):
	self.position += velocity * speedMultiplier
	


func _on_Ember_area_entered( area ):
	if area.is_in_group("Attack"):
		pass
	if area.is_in_group("creep"):
		area.isInFire = true
	