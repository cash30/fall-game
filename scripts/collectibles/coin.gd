extends Area2D
@export var speed = 200

func _process(delta: float) -> void:
	position.y += speed * delta
	pass


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		print("coin collected")
		Globals.score += 10
		queue_free()
	pass # Replace with function body.
