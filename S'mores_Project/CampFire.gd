extends Sprite

# class member variables go here, for example:
# var a = 2
var targetCreep 

func _on_Timer_timeout():
	if targetCreep:
		var newEmber= load("res://Ember.tscn").instance()
		$"..".add_child(newEmber)
		newEmber.position = self.position
		var differenceVector = targetCreep.global_position - newEmber.position
		print (differenceVector)
		var directionVector = differenceVector.normalized()
		newEmber.velocity = directionVector 
		print(newEmber.velocity)
	

func _on_Area2D_area_entered( area ):
	if area.is_in_group("creep"):
		targetCreep = area
	pass

func _on_Area2D_area_exited( area ):
	if area.is_in_group("creep") and area == targetCreep:
		targetCreep = null
	pass