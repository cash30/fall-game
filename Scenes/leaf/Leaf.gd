extends Node2D
var num  : int = randi_range(1, 2)
var rotationSpeed = randf_range(-10, 10)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rotation_degrees = randi_range(-45, 45)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += rotationSpeed * delta


func getNum() -> int:
	if num: #if we can find num
		return num
	else:# if we can not find num we return an error value (if this function returns -1 theres a problem)
		return -1
	
