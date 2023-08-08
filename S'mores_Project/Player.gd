extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _process(delta):
	var direction = Vector2(0, 0)

	if Input.is_action_pressed("ui_down"):
		direction.y += 1
		self.rotation_deg = 90
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
		self.rotation_deg = 180
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
		self.rotation_deg = 270
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
		self.rotation_deg = 360
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_left"):
		self.rotation_deg = 135
	if Input.is_action_pressed("ui_down") and Input.is_action_pressed("ui_right"):
		self.rotation_deg = 45
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left"):
		self.rotation_deg = 225
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right"):
		self.rotation_deg = 315 
	
	
	var speed = 300
	#direction * speed
	
	self.move_and_slide(direction * speed)
	
	if Input.is_action_just_pressed("campfire_spawn"):
		var newCampfire = load("res://CampFire.tscn").instance()
		$"..".add_child(newCampfire)
		newCampfire.position = self.position
	
	if Input.is_action_pressed("flame"):
		$"flameArea".visible = true
		$"flameArea/CollisionShape2D".set_disabled(false)
	else:
		$"flameArea".visible = false
		$"flameArea/CollisionShape2D".set_disabled(true)


func _on_flameArea_area_entered( area ):
	if area.is_in_group("Attack"):
		pass
	if area.is_in_group("creep"):
		area.isInFire = true
	
	
	

