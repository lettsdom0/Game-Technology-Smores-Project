extends Node
var Marshleft = 6
var Chocleft = 4
var tooSlow = 1
var Toasty = 10

func _process(delta):
	if Toasty < 1:
		$"you_win".visible = true
	if Input.is_action_just_pressed("reset_game") and Toasty < 1:
			print("reset")
			#restart game
			get_tree().reload_current_scene()
	if Input.is_action_just_pressed("reset_game") and tooSlow < 1:
			print("reset")
			#restart game
			get_tree().reload_current_scene()
	pass
	

func _on_MarshTimer_timeout():
	if Marshleft > 0:
		Marshleft -= 1
		print ("shazam")
		var newMarsh = load("res://Car.tscn").instance()
		$"MarshPath".add_child(newMarsh)
	pass

func _on_ChocTimer_timeout():
	if Chocleft > 0:
		Chocleft -= 1
		print ("wham")
		var newChoc = load("res://Truck.tscn").instance()
		$"MarshPath".add_child(newChoc)
	pass

