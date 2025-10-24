extends CollisionPolygon2D


func _on_node_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		queue_free()
	pass # Replace with function body.
