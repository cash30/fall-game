extends Area2D
@export var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += speed * delta
	pass


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		queue_free()
		print("medkit collected")
		if Globals.playerHealth < 100:
			if Globals.playerHealth < 30:
				Globals.playerHealth = 50
			else:
				Globals.playerHealth += 20
	pass # Replace with function body.
