extends PathFollow2D

func _on_AnimationPlayer_animation_finished( name ):
	$"Chocolate".global_position = $"../../grahamChoc".position
